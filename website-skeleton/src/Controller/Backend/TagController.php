<?php

namespace App\Controller\Backend;

use App\Entity\Tag;
use App\Form\TagType;
use App\Repository\TagRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class TagController extends AbstractController
{
    /**
     * @Route("/backend/tag", name="backend_tag_index")
     */
    public function index(TagRepository $tagRepository)
    {
        return $this->render('backend/tag/index.html.twig', [
            'tags' => $tagRepository->findAll()
        ]);
    }
    
    /**
     * @Route("/backend/tag/{id}", name="backend_tag_show", methods={"GET"}, requirements={"id"="\d+"})
     */
    public function show(Tag $tag = null): Response
    {
        if (!$tag) {
            throw $this->createNotFoundException('Tag introuvable');
        }

        return $this->render('backend/tag/show.html.twig', ['tag' => $tag]);
    }
    /**
     * @Route("/backend/tag/new", name="backend_tag_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $tag = new Tag();
        $form = $this->createForm(TagType::class, $tag);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($tag);
            $entityManager->flush();

            $this->addFlash(
                'success',
                'Enregistrement effectué'
            );
            
            return $this->redirectToRoute('backend_tag_index');
        }

        return $this->render('backend/tag/new.html.twig', [
            'tag' => $tag,
            'form' => $form->createView(),
        ]);
    }
    /**
     * @Route("/backend/tag/{id}/edit", name="backend_tag_edit", methods={"GET","POST"}, requirements={"id"="\d+"})
     */
    public function edit(Request $request, Tag $tag): Response
    {

        $form = $this->createForm(TagType::class, $tag);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            $this->addFlash(
                'info',
                'Mise à jour effectuée'
            );

            return $this->redirectToRoute('backend_tag_index', ['id' => $tag->getId()]);
        }

        return $this->render('backend/tag/edit.html.twig', [
            'tag' => $tag,
            'form' => $form->createView(),
        ]);
    }
    /**
     * @Route("/backend/tag/{id}", name="backend_tag_delete", methods={"DELETE"}, requirements={"id"="\d+"})
     */
    public function delete(Request $request, Tag $tag): Response
    {
        if ($this->isCsrfTokenValid('delete'.$tag->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($tag);
            $entityManager->flush();

            $this->addFlash(
                'danger',
                'Suppression effectuée'
            );
        }

        return $this->redirectToRoute('backend_tag_index');
    }
}
