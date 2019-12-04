<?php

namespace App\Controller\Backend;

use App\Entity\Answer;
use App\Entity\Question;
use App\Repository\AnswerRepository;
use App\Repository\QuestionRepository;
use App\Repository\StatusRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class BlockController extends AbstractController
{
    /**
     * @Route("/backend/blocked", name="backend_blocked_index", requirements={"id"="\d+"})
     
     */
    public function index_block(QuestionRepository $questionRepository, AnswerRepository $answerRepository)
    {

        return $this->render('backend/blocked/index.html.twig', [

            'questions' => $questionRepository->findAll(),
            'answers'=> $answerRepository->findAll()

        ]);
    }
    /**
     * @Route("/question/block/{id}", name="question_block", requirements={"id"="\d+"})
     
     */
    public function blockQuestion(Question $question, StatusRepository $statusRepository)
    {

        $code = "BLOCKED";
        $blockedStatus = $statusRepository->findOneByCode($code);
        $question->setStatus($blockedStatus);

        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($question);
        $entityManager->flush();
        return $this->redirectToRoute('backend_blocked_index');
    }
    /**
     * @Route("/question/unblock/{id}", name="question_unblock", requirements={"id"="\d+"})
     
     */
    public function unblockQuestion(Question $question, StatusRepository $statusRepository)
    {

        $code = "UNBLOCKED";
        $unblockStatus = $statusRepository->findOneByCode($code);
        $question->setStatus($unblockStatus);

        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($question);
        $entityManager->flush();
        return $this->redirectToRoute('questions_index');
    }

    /**
     * @Route("/answer/block/{id}", name="answer_block", requirements={"id"="\d+"})
     
     */
    public function blockAnswer(Answer $answer, StatusRepository $statusRepository)
    {

        $code = "BLOCKED";
        $blockedStatus = $statusRepository->findOneByCode($code);
        $answer->setStatus($blockedStatus);

        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($answer);
        $entityManager->flush();
        return $this->redirectToRoute('backend_blocked_index');
    }
    /**
     * @Route("/question/unblock/{id}", name="question_unblock", requirements={"id"="\d+"})
     
     */
    public function unblockAnswer(Answer $answer, StatusRepository $statusRepository)
    {

        $code = "UNBLOCKED";
        $unblockStatus = $statusRepository->findOneByCode($code);
        $answer->setStatus($unblockStatus);

        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($answer);
        $entityManager->flush();
        return $this->redirectToRoute('questions_index');
    }

    
}
