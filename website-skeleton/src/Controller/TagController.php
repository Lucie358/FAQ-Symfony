<?php

namespace App\Controller;

use App\Entity\Tag;
use App\Repository\TagRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\BrowserKit\Response;
use Symfony\Component\Routing\Annotation\Route;

class TagController extends AbstractController
{

    public function tagsList(TagRepository $tagRepository)
    {
        
        $tags = $tagRepository->findAll();        

        return $this->render(
            'tag/tagslist.html.twig',
            ['tags' => $tags]
        );
    }
    /**
     * @Route("/tag/{id}", name="tag_questionByTag", methods={"GET"}, requirements={"id"="\d+"})
     */
    public function questionByTag(Tag $tag)
    {
        return $this->render('tag/index.html.twig', [
            'tag'=> $tag
          
        ]);
    }
}
