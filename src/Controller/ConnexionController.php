<?php

namespace App\Controller;

use App\Form\ConnexionType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;


use App\Entity\Utilisateur;

class ConnexionController extends AbstractController
{
    #[Route('/connexion', name: 'app_connexion')]
    public function index(Request $request, EntityManagerInterface $entityManager,AuthenticationUtils $authenticationUtils): Response
    {
        $form = $this->createForm(ConnexionType::class);
        $form->handleRequest($request);

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();

        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        if($form -> isSubmitted() && $form-> isValid()){
            // get data et traitement des date vers les différents entity 
            $data = $form->getData();

           
            //$error = ' ';
            $email = $data['Email'];
            $password = $data['Password'];    
        
            $user = $entityManager->getRepository(Utilisateur::class)->findOneBy(['email' => $email]);

           
            // Vérifie que l'utilisateur existe et que le mot de passe est correct
            if ($user && password_verify($password, $user->getPassword())) {

                $id = $user->getId();
                // ajouter le start login sur toute les pages a vérrouiller et valider 
                if($user->isInscriptConfirm() == false){
                    return $this->redirectToRoute('app_inscription', ['id'=>$id]);
                } else {
                    // Affiche un message d'erreur
                   // $error ='Adresse email ou mot de passe incorrect.';
                   return $this->redirectToRoute('app_home');
                }     
            } else {
                // Affiche un message d'erreur
               // $error ='Adresse email ou mot de passe incorrect.';
               echo 'Adresse email ou mot de passe incorrect.';
               return $this->redirectToRoute('app_connexion');
            }   

            
        }
           
        return $this->render('connexion/index.html.twig', [
            'controller_name' => 'SingInController',
            'last_username' => $lastUsername,
            'error' => $error,
            'form'=> $form->createView(),
        ]);
    }
}
