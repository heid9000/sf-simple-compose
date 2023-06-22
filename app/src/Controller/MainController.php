<?php

namespace App\Controller;

use Doctrine\DBAL\Exception;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class MainController extends AbstractController
{
    #[Route('', name: 'index')]
    public function indexAction(
        EntityManagerInterface $em
    )
    {
        try {
            $em->getConnection()->connect();
        } catch (Exception $e) {
            $errors = (string) $e;
        }
        return new JsonResponse([
            'db_errors'        => $em->getConnection()->isConnected() ? 'connected' : $errors ?? 'unknown error',
        ]);
    }
}
