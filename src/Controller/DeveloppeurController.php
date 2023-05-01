<?php

namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;


//Entity
use App\Entity\Ville;
use App\Entity\CodePostal;

use App\Entity\Region;

class DeveloppeurController extends AbstractController
{
    #[Route('/developpeur', name: 'app_developpeur')]
    public function index(EntityManagerInterface $entityManager): Response
    {
        // function pour intégrer le json dans la base de donnée utiliser uniquement si on perd les data dans la db pour ne pas générer des doublons 
     
        $jsonUrl = $this->getParameter('kernel.project_dir') . '/public/json/Region-Ville-CodePostal.json';
        $jsonData = file_get_contents($jsonUrl);
        $datas = json_decode($jsonData, true);
        
   

        foreach ($datas as $data) {
            $regionName = $data['region'];            

            $repository = $entityManager->getRepository(Region::class);
            $regionExistante = $repository->findOneBy([
            'regionName' => $regionName
            ]);

            if(!$regionExistante){
                $region = new Region();
                $region->setRegionName($regionName);
    
                            
                $entityManager->persist($region);
                $entityManager->flush();
            }

            $codePostal = $data['codePostal'];
            $repository= $entityManager->getRepository(CodePostal::class);
            $codePostalExistante = $repository->findOneBy([
                'CodePostal' => $codePostal
            ]);

            if(!$codePostalExistante){
                $cp = new CodePostal();
                $cp->setCodePostal($codePostal);
    
                // Persistez l'objet Region dans la base de données                
                $entityManager->persist($cp);
                $entityManager->flush();
            }
            
           

    
        
            
        }

        return $this->render('developpeur/index.html.twig', [
            'controller_name' => 'DeveloppeurController',
            'message' => 'Importation réussie',
        ]);
    }


    #[Route('/developpeurCommunes', name: 'app_developpeurCommunes')]
    public function communes(EntityManagerInterface $entityManager): Response
    {
        // function pour intégrer le json dans la base de donnée utiliser uniquement si on perd les data dans la db pour ne pas générer des doublons 
     
        $jsonUrl = $this->getParameter('kernel.project_dir') . '/public/json/Region-Ville-CodePostal.json';
        $jsonData = file_get_contents($jsonUrl);
        $datas = json_decode($jsonData, true);
        
   

        foreach ($datas as $data) {
            $villeName = $data['ville'];
            $localite= $data['region'];
            $codePostal = $data['codePostal'];
            
            $commune = new Ville;
            $commune->setVilleName($villeName); 

            $repository= $entityManager->getRepository(CodePostal::class);
            $codePostaux = $repository->findAll();

            $repository= $entityManager->getRepository(Region::class);
            $regions = $repository->findAll();
                       
            foreach($codePostaux as $cp){
                $codeValue =  $cp->getCodePostal();
                
                
                if($codePostal == $codeValue){
                    //$id = $cp->getId();
                    //$code = $entityManager->getRepository(CodePostal::class)->find($id);
                    $commune->setCodePostal($cp);
                    
                }
            }

            foreach($regions as $region){
                $regionName =  $region->getregionName();
                

               if($localite == $regionName){
                   // $id = $localite->getId();
                    $commune->setRegion($region);
                }
            }      
            
            


                      
            
            

            
            $entityManager->persist($commune);
            $entityManager->flush();


            
        }

        return $this->render('developpeur/index.html.twig', [
            'controller_name' => 'DeveloppeurController',
            'message' => 'Importation réussie',
        ]);
    }
}






        /*;
        
        
        foreach ($datas as $data) {

            $villeName = $data['ville'];
            $regionName = $data['region'];

                $repositoryCommune = $entityManager->getRepository(Commune::class);
                $communeExistante = $repositoryCommune->findOneBy([
                    'Commune' => $villeName
                ]);
              
            
                if(!$communeExistante){
                    $nouvelleCommune = new Commune();                
                    $nouvelleCommune->setCommune($villeName);
                    $nouvelleCommune->setLocalite($regionName);

                    $entityManager->persist($nouvelleCommune);
                    $entityManager->flush();
                }



            

            /*$repositoryLocalite = $entityManager->getRepository(Localite::class);
                $localiteExistante = $repositoryLocalite->findOneBy([
                'Localite' => $regionName
            ]);
          
            
            
            if(!$localiteExistante){
                $nouvelleLocalite = new Localite();
                $nouvelleLocalite->setLocalite($regionName);

                $entityManager->persist($nouvelleLocalite);
                $entityManager->flush();

               
            }
        
        

                
           
                
                
                
                

                
                
                 
                
        

            
         } */

        /*foreach ($datas as $data) {
            $villeName = $data['ville'];
            $regionName = $data['region'];

            
            $localite = $repository->findOneBy([
                'Localite' => $regionName
            ]);

            $repository = $entityManager->getRepository(Commune::class);
            $commune = $repository->findBy([
                'Commune' => $villeName
            ]);

            

            $commune->setLocalite($localite->getId());
            dd($commune);
           
        }*/





       
            
              
                      

            
            
            
            
               /*       
                
                $cpData = $data['codePostal'];
            
                $codePostal = new CodePostal();
                $codePostal->setCodePostal($cpData);

                // Affecter la ville correspondante
                $codePostal->setCommunes($ville);

                // Persistez l'objet CodePostal dans la base de données
                $entityManager->persist($codePostal);*/
            
    

        //$entityManager->flush();