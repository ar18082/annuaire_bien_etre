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

use function PHPUnit\Framework\isEmpty;

class InscriptionController extends AbstractController
{
    #[Route('/inscription/{id}', name: 'app_inscription')]
    public function index($id, Request $request, EntityManagerInterface $entityManager): Response
    {
       // recupérer l'id qui doit passer dans le mail 

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
            $presta ="";

            $repository = $entityManager->getRepository(Utilisateur::class);
            $utilisateur = $repository->find($id);

            if(!Empty($nom_societe)){
                
                $prestataire = new Prestataire;
                $prestataire ->setNom($nom_societe);
                $prestataire ->setNumtel($telephone);
                $prestataire ->setNumtva($tva);
                $prestataire ->setSiteInternet($siteInternet);                
                $entityManager->persist($prestataire);
                $entityManager->flush();
                $repository = $entityManager->getRepository(Prestataire::class);
                $presta = $repository->findOneBy(['Nom' => $nom_societe]);
            };      
            
//introduire une condition qui defferencie presta de inter 
            $internaute = new Internaute;
            $internaute ->setNom($nom);
            $internaute->setPrenom($prenom);
            $entityManager->persist($internaute);
            $entityManager->flush();

            
            $repository = $entityManager->getRepository(Internaute::class);
            $inter = $repository->findOneBy(['Nom' => $nom, 'Prenom' => $prenom]);
            
       
             
            

            $utilisateur ->setAdresseRue($adresseRue);
            $utilisateur ->setAdresseNumber($adresseNumber);
            $utilisateur ->setInscriptConfirm($inscriptionComplete);
            $utilisateur ->setInternaute($inter);

            if(!Empty($presta)){
                $utilisateur ->setPrestataire($presta);
            }
            if($role){
                $r[] = 'ROLE_PRESTATAIRE';  
                
            }else{
                $r[] = 'ROLE_INTERNAUTE';
            }
            $utilisateur->setRoles($r);

            $entityManager->flush();
           
            // il va falloir faire les relations entre ville,region et cp avec utilisateur 
            // envisager de l'envoyer en db persist et flush 

            
            

          

        


            
            return $this->redirectToRoute('app_login');
            

        }   


        return $this->render('inscription/index.html.twig', [
            'form'   =>  $form->  createView(),           
             

        ]);
    }


    

    
}
