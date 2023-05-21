<?php

namespace App\Controller;

use App\Entity\CategorieDeServices;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;


/*les entity*/
use App\Entity\Internaute;
use App\Entity\Prestataire;
use App\Entity\Utilisateur;
use App\Entity\Images;
/*les Forms */

use App\Form\InscriptionType;


use function PHPUnit\Framework\isEmpty;

class InscriptionController extends AbstractController
{
    #[Route('/inscription/{id}', name: 'app_inscription')]
    public function index($id, Request $request, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(InscriptionType::class);
        $form->handleRequest($request);

               

        if($form -> isSubmitted() && $form-> isValid()){
            // get data et traitement des date vers les différents entity 
            $data = $form->getData();


            $nom = $data['Nom'];
            $prenom = $data['Prenom'];
            $adresseRue = $data['AdresseRue'];
            $adresseNumber = $data['AdresseNumber'];
            $region = $data['region'];
            $ville = $data['ville'];
            $cp = $data['codePostal'];
            $role = $data['Prestataire'];
            $nom_societe = $data['Nom_societe'];
            $telephone = $data['Numtel'];
            $tva = $data['Numtva'];
            $siteInternet = $data['SiteInternet'];
            $inscriptionComplete = true;
            $image = $form->get('Image')->getData();
            $logo = $form->get('Logo')->getData();
            $categorie = $form->get('categorie');
            
          

            $repository = $entityManager->getRepository(Utilisateur::class);
            $utilisateur = $repository->find($id);  

            
            // si la réponse à la question êtes vous un prestataire ($role = true) est true 
            if($role){

                $repository = $entityManager->getRepository(CategorieDeServices::class);
                $categ = $repository->find($categorie); 
                            
                $prestataire = new Prestataire;
                $prestataire ->setNom($nom_societe);
                $prestataire ->setNumtel($telephone);
                $prestataire ->setNumtva($tva);
                $prestataire ->setSiteInternet($siteInternet);
                $prestataire->setUtilisateur($utilisateur);
                $prestataire->setCategorie($categ);
                $entityManager->persist($prestataire);      
                $entityManager->flush();
                $repository = $entityManager->getRepository(Prestataire::class);
                $presta = $repository->findOneBy(['Nom' => $nom_societe]);
                // attribution du prestataire 
                $utilisateur ->setPrestataire($presta);
                // défini role de l'utilisateur 
                $r[] = 'ROLE_PRESTATAIRE'; 

                
                $fichier =  'logo_prestataire_'.$presta->getId().'.'. $logo->guessExtension();

                $logo->move(
                    'img/logo',
                    $fichier
                );
                $img = new Images();
                $img-> setImageName($fichier);
                $img->setPrestataire($presta);
                $entityManager->persist($img);
                $entityManager->flush();
                
            }else{
                // la réponse à la question êtes vous un prestataire ($role = false) est false 
                $internaute = new Internaute;
                $internaute ->setNom($nom);
                $internaute->setPrenom($prenom);                
                $entityManager->persist($internaute);
                $entityManager->flush();
                // définir role de l'utilisateur 
                $r[] = 'ROLE_INTERNAUTE';
                $repository = $entityManager->getRepository(Internaute::class);
                $inter = $repository->findOneBy(['Nom' => $nom, 'Prenom' => $prenom]); 
                $utilisateur ->setInternaute($inter);

                $fichier =  'internaute'.$inter->getId().'.'. $image->guessExtension();

                $image->move(
                    'img/internautes',
                    $fichier
                );
                $img = new Images();
                $img-> setImageName($fichier);
                $img->setInternaute($inter);
                $entityManager->persist($img);
                $entityManager->flush();
            }
            // attribution du role de l'utilisateur 
            $utilisateur->setRoles($r);

            //attribution de la localisation 
            $utilisateur ->setAdresseRue($adresseRue);
            $utilisateur ->setAdresseNumber($adresseNumber);
            $utilisateur ->setVille($ville);
            $utilisateur ->setRegion($region);
            $utilisateur ->setCodePostal($cp);


            // confimation de l'inscription complete 
            $utilisateur ->setInscriptConfirm($inscriptionComplete);
            
            $entityManager->flush();
            return $this->redirectToRoute('app_login');
            

        }   


        return $this->render('inscription/index.html.twig', [
            'form'   =>  $form->  createView(),           
             

        ]);
    }


    

    
}
