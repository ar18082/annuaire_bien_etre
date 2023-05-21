<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;

use App\Entity\CategorieDeServices;
use App\Entity\Images;
use App\Entity\Internaute;
use App\Entity\Utilisateur;
use App\Entity\Prestataire;
use App\Form\SearchType;

class CategorieDeServicesController extends AbstractController
{
    #[Route('/categorie-de-services/{id}', name: 'app_categorie_de_services')]
    public function index($id, Request $request, EntityManagerInterface $entityManager): Response
    {

        $repository = $entityManager->getRepository(CategorieDeServices::class);
        $categorie = $repository->find($id);

        $repository = $entityManager->getRepository(Images::class);
        $images = $repository->findAll();

        $repository = $entityManager->getRepository(Prestataire::class);
       
        $prestataires = $repository->findBy(['categorie' => $categorie]);

        $form = $this->createForm(SearchType::class);

        $form->handleRequest($request);
                
        if ($form->isSubmitted() && $form->isValid()) {
            $datas = $form->getData();
           
          
                if(!empty($datas['prestataire'])){
                    $recherche_presta= $datas['prestataire'];

                    $repository = $entityManager->getRepository(Prestataire::class);
                    $page = $request->query->get('page', 1);
                    $prestataires = $repository->findByPrestataire($recherche_presta, $page);      
                    
                    
                }else if($datas['ville'] != null){

                    $recherche_ville= $datas['ville']->getVilleName();         
                    
                    $repository = $entityManager->getRepository(Prestataire::class);
                    $page = $request->query->get('page', 1);
                    $prestataires = $repository->findByVille($recherche_ville, $page);
                                   
                    
                }else if($datas['codePostal'] != null){
                    $recherche_cp = $datas['codePostal'] ->getCodePostal();
    
                    $repository = $entityManager->getRepository(Prestataire::class);
                    $page = $request->query->get('page', 1);
                    $prestataires = $repository->findByCP($recherche_cp, $page);
    
                }else if($datas['region'] != null){
                    $recherche_region = $datas['region'] ->getRegionName();

                    
                    $repository = $entityManager->getRepository(Prestataire::class);
                    $page = $request->query->get('page', 1);
                    $prestataires = $repository->findByRegion($recherche_region, $page);
                }
           
            return $this->render('prestataire/liste_prestataire.html.twig', [
                'controller_name' => 'PrestataireController',
                'prestataires' =>$prestataires
                
            ]);

        }

        return $this->render('categorie_de_services/index.html.twig', [
           'categorie' => $categorie,
           'form' =>$form ->createView(),
           'images' =>$images,
           'prestataires' => $prestataires
            
        ]);
    }
}
