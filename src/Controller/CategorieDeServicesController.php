<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CategorieDeServicesController extends AbstractController
{
    #[Route('/categorie/de/services', name: 'app_categorie_de_services')]
    public function index(): Response
    {
        return $this->render('categorie_de_services/index.html.twig', [
            'controller_name' => 'CategorieDeServicesController',
        ]);
    }
}
