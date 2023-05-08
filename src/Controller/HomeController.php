<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;



//entity 

use App\Entity\Region;
use App\Entity\CodePostal;
use App\Entity\Ville;
use App\Entity\CategorieDeServices;
use App\Entity\Utilisateur;
use App\Entity\Internaute;
use App\Form\rechercheType;
use App\Form\SearchType;
use App\Form\VilleType;
use App\Repository\CodePostalRepository;
use App\Repository\VilleRepository;
use App\Repository\RegionRepository;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Validator\Constraints\NotBlank;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(Request $request, EntityManagerInterface $entityManager, RegionRepository $regionRepository, VilleRepository $villeRepository, CodePostalRepository $codePostalRepository): Response
    {
        $repository = $entityManager->getRepository(CategorieDeServices::class);
        $categories = $repository->findAll();
        $randomIndex = array_rand($categories);
        $randomCateg = $categories[$randomIndex];

        
        $form = $this->createForm(SearchType::class);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $datas = $form->getData();

               
            
            $this->addFlash('success', 'Thanks for your message. We\'ll get back to you shortly.');
            return $this->redirectToRoute('app_home');
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
