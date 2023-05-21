<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;

use App\Entity\CategorieDeServices;
use App\Entity\Utilisateur;
use App\Entity\Prestataire;
use App\Form\SearchType;
use Symfony\Component\VarDumper\Cloner\Data;

class PrestataireController extends AbstractController
{
    #[Route('/prestataire/{data}', name: 'app_prestataire')]
    public function index($data, Request $request, EntityManagerInterface $entityManager): Response
    {
        $repository = $entityManager->getRepository(CategorieDeServices::class);
        $categories = $repository->findAll();
        $randomIndex = array_rand($categories);    
        $randomCateg = $categories[$randomIndex];

       //dd($data);





        

       
        
        

        


        return $this->render('prestataire/liste_prestataire.html.twig', [
           // 'controller_name' => 'PrestataireController',
            //'form' =>$form ->createView(),
            //'categories' => $categories,
            //'categ_mois' => $randomCateg,
            
        ]);
    }
}
