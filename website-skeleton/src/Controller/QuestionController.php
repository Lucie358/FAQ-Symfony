<?php

namespace App\Controller;

use App\Entity\Answer;
use App\Entity\Question;
use App\Form\AnswerType;
use App\Form\QuestionType;
use App\Repository\StatusRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class QuestionController extends AbstractController
{
    /**
     * @Route("/", name="questions_index")
     */
    public function index()
    {
        $repository = $this->getDoctrine()->getRepository(Question::class);
        $questions = $repository->findAllOrderedByDate();

        return $this->render('question/index.html.twig', [
            'questions' => $questions,
        ]);
    }
    /**
     * @Route("/question/{id}", name="question_show", requirements={"id"="\d+"})
     */
    public function show(Request $request, Question $question, StatusRepository $statusRepository)
    {

        $code = 'UNBLOCKED';
        $defaultStatus= $statusRepository->findOneByCode($code);
        $answer = new Answer();
        $form = $this->createForm(AnswerType::class, $answer);
        $form->handleRequest($request);



        if ($form->isSubmitted() && $form->isValid()) {
            //Je fourni à $user l'user que j'ai, si je suis connecté sinon il sera à null
            $user = $this->getUser();

            //Je set Question et User à la main avant d'envoyer en BDD
            $answer->setQuestion($question);
            $answer->setUser($user);
            $answer->setStatus($defaultStatus);




            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($answer);
            $entityManager->flush();

            return $this->redirectToRoute('question_show', ['id' => $question->getId()]);
        }


        return $this->render('question/show.html.twig', [
            'question' => $question,
            'form' => $form->createView(),

        ]);
    }
    /**
     * @Route("/question/add", name="question_add", )
     */
    public function add(Request $request, StatusRepository $statusRepository)
    {
        $code = 'UNBLOCKED';
        $defaultStatus= $statusRepository->findOneByCode($code);

        $question = new Question();
        $form = $this->createForm(QuestionType::class, $question);
        $form->handleRequest($request);
        $user = $this->getUser();


        if ($form->isSubmitted() && $form->isValid()) {
            $question->setUser($user);
            $question->setStatus($defaultStatus);


            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($question);
            $entityManager->flush();

            return $this->redirectToRoute('questions_index');
        }
        return $this->render('question/question_add.html.twig', [
            'form' => $form->createView(),

        ]);
    }

    /**
     * @Route("/question/{id}/validate_answer/{answer_id}", name="question_validate", requirements={"id"="\d+"})
     
     */
    public function validate(Request $request, Question $question)
    {

        $valideAnswer = $request->get("answer_id");
        $question = $question->setValideAnswer($valideAnswer);


        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($question);
        $entityManager->flush();

        return $this->redirectToRoute('question_show', ['id' => $question->getId()]);
    }

   
}
