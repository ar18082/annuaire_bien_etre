<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;


/*les entity*/

use App\Entity\Internaute;
use App\Entity\Prestataire;
use App\Entity\Commune;
use App\Entity\Localite;
use App\Entity\CodePostal;
use App\Entity\Utilisateur;
/*les Forms */
use App\Form\InternauteType;
use App\Form\InscriptionType;
use App\Form\PrestataireType;
use App\Form\UtilisateurType;

class InscriptionController extends AbstractController
{
    #[Route('/inscription', name: 'app_inscription')]
    public function index(Request $request, EntityManagerInterface $entityManager): Response
    {
       
        $form = $this->createForm(InscriptionType::class);
        $form->handleRequest($request);

        if($form -> isSubmitted() && $form-> isValid()){
            // get data et traitement des date vers les différents entity 
            $data = $form->getData();


            if($data['Prestataire'] == true){
                return $this->redirectToRoute('app_inscription_prestataire');
            }else{
                return $this->redirectToRoute('app_connexion');
            }

        }
            

       /* 
        intégrer les data dans la base de donnée et faire les relations entre les 3 tables
       $jsonUrl = $this->getParameter('kernel.project_dir') . '/public/json/Region-Ville-CodePostal.json';
        $jsonData = file_get_contents($jsonUrl);
        $datas = json_decode($jsonData, true);
        */
        
       // $repository = $entityManager->getRepository(Utilisateur::class);
       // $utilisateur = $repository->findOneBy([], ['id' => 'desc']);
        
        //$nom = $request->get('nom');

        return $this->render('inscription/index.html.twig', [
                'form'   =>  $form->  createView(),
              
              //'nom' => $nom, 
              //'datas' =>$datas

        ]);
    }


    #[Route('/inscription_prestataire', name: 'app_inscription_prestataire')]
    public function InscriptionPrestataire(Request $request, EntityManagerInterface $entityManager): Response
    {
       
        $form = $this->createForm(PrestataireType::class);
        $form->handleRequest($request);

        if($form -> isSubmitted() && $form-> isValid()){
            // get data et traitement des date vers les différents entity 
            $data = $form->getData();


            
            return $this->redirectToRoute('app_connexion');
            

        }
            

       /* 
        intégrer les data dans la base de donnée et faire les relations entre les 3 tables
       $jsonUrl = $this->getParameter('kernel.project_dir') . '/public/json/Region-Ville-CodePostal.json';
        $jsonData = file_get_contents($jsonUrl);
        $datas = json_decode($jsonData, true);
        */
        
       // $repository = $entityManager->getRepository(Utilisateur::class);
       // $utilisateur = $repository->findOneBy([], ['id' => 'desc']);
        
        //$nom = $request->get('nom');

        return $this->render('inscription/prestataire.html.twig', [
                'form'   =>  $form->  createView(),
              
              //'nom' => $nom, 
              //'datas' =>$datas

        ]);
    }

    
}
