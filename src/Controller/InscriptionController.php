<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;


/*les entity*/
use App\Entity\Utilisateur;
use App\Entity\Internaute;
use App\Entity\Prestataire;
use App\Entity\Commune;
use App\Entity\Localite;
use App\Entity\CodePostal;

/*les Forms */
use App\Form\InternauteType;
use App\Form\UtilisateurType;
use App\Form\PrestataireType;

 

class InscriptionController extends AbstractController
{
    #[Route('/inscription', name: 'app_inscription')]
    public function index(Request $request, EntityManagerInterface $entityManager): Response
    {
        $utilisateur = new Utilisateur();

        $form = $this->createForm(UtilisateurType::class, $utilisateur);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $utilisateur = $form->getData();
            dd($utilisateur);
            
            return $this->redirectToRoute('app_home');
        }


        return $this->render('inscription/index.html.twig', [
            'form' => $form->createView(),
            'utilisateur' => $utilisateur
        ]);
    }

    
}
