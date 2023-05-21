<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;



//entity 
use App\Entity\CategorieDeServices;
use App\Entity\Utilisateur;
use App\Entity\Prestataire;
use App\Form\SearchType;





class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home', methods: 'GET')]
    public function index(Request $request, EntityManagerInterface $entityManager): Response
    {
        $repository = $entityManager->getRepository(CategorieDeServices::class);
        $categories = $repository->findAll();
        $randomIndex = array_rand($categories);
        $randomCateg = $categories[$randomIndex];


        
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
        return $this->render('home/index.html.twig', [
            'controller_name'=> 'Home page',
            'form' =>$form ->createView(),
            'categories' => $categories,
            'categ_mois' => $randomCateg,
            
            
            
        ]);
    }


    #[Route('/confirmation', name: 'app_confirmation')]
    public function confirmation(Request $request, EntityManagerInterface $entityManager): Response
    {
        
        $repository = $entityManager->getRepository(Utilisateur::class);
        $utilisateur = $repository->findOneBy([], ['id' => 'desc']);
        

        return $this->render('home/confirmation.html.twig', [
            'controller_name'=> 'confirmation',
            'utilisateur' => $utilisateur,
            
            
        ]);
    }
}
