<?php
/*
namespace App\Entity;

use App\Repository\CommuneRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CommuneRepository::class)]
class Commune
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Commune = null;

    #[ORM\OneToMany(mappedBy: 'Commune', targetEntity: Utilisateur::class)]
    private Collection $utilisateurs;

    #[ORM\ManyToOne(inversedBy: 'communes')]
    private ?Localite $localite = null;

    #[ORM\OneToMany(mappedBy: 'communes', targetEntity: CodePostal::class)]
    private Collection $codePostals;

    #[ORM\ManyToOne(inversedBy: 'ville')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Localite $region = null;

    #[ORM\ManyToOne(inversedBy: 'ville')]
    #[ORM\JoinColumn(nullable: false)]
    private ?CodePostal $codePostal = null;

    public function __construct()
    {
        $this->utilisateurs = new ArrayCollection();
        $this->codePostals = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCommune(): ?string
    {
        return $this->Commune;
    }

    public function setCommune(?string $Commune): self
    {
        $this->Commune = $Commune;

        return $this;
    }

    /**
     * @return Collection<int, Utilisateur>
     *//*
    public function getUtilisateurs(): Collection
    {
        return $this->utilisateurs;
    }

    public function addUtilisateur(Utilisateur $utilisateur): self
    {
        if (!$this->utilisateurs->contains($utilisateur)) {
            $this->utilisateurs->add($utilisateur);
            $utilisateur->setCommune($this);
        }

        return $this;
    }

    public function removeUtilisateur(Utilisateur $utilisateur): self
    {
        if ($this->utilisateurs->removeElement($utilisateur)) {
            // set the owning side to null (unless already changed)
            if ($utilisateur->getCommune() === $this) {
                $utilisateur->setCommune(null);
            }
        }

        return $this;
    }

    public function getRegion(): ?Localite
    {
        return $this->region;
    }

    public function setRegion(?Localite $region): self
    {
        $this->region = $region;

        return $this;
    }

    public function getCodePostal(): ?CodePostal
    {
        return $this->codePostal;
    }

    public function setCodePostal(?CodePostal $codePostal): self
    {
        $this->codePostal = $codePostal;

        return $this;
    }

   
}





namespace App\Entity;

use App\Repository\CodePostalRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CodePostalRepository::class)]
class CodePostal
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $CodePostal = null;

    #[ORM\OneToMany(mappedBy: 'CodePostal', targetEntity: Utilisateur::class)]
    private Collection $utilisateurs;

    #[ORM\OneToMany(mappedBy: 'CodePostal', targetEntity: Utilisateur::class)]
    private Collection $utilisateur;

    #[ORM\ManyToOne(inversedBy: 'codePostals')]
    private ?Commune $communes = null;

    #[ORM\OneToMany(mappedBy: 'codePostal', targetEntity: Commune::class)]
    private Collection $ville;

    public function __construct()
    {
        $this->utilisateurs = new ArrayCollection();
        $this->utilisateur = new ArrayCollection();
        $this->ville = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCodePostal(): ?string
    {
        return $this->CodePostal;
    }

    public function setCodePostal(?string $CodePostal): self
    {
        $this->CodePostal = $CodePostal;

        return $this;
    }

    /**
     * @return Collection<int, Utilisateur>
     *//*
    public function getUtilisateurs(): Collection
    {
        return $this->utilisateurs;
    }

    public function addUtilisateur(Utilisateur $utilisateur): self
    {
        if (!$this->utilisateurs->contains($utilisateur)) {
            $this->utilisateurs->add($utilisateur);
            $utilisateur->setCodePostal($this);
        }

        return $this;
    }

    public function removeUtilisateur(Utilisateur $utilisateur): self
    {
        if ($this->utilisateurs->removeElement($utilisateur)) {
            // set the owning side to null (unless already changed)
            if ($utilisateur->getCodePostal() === $this) {
                $utilisateur->setCodePostal(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Commune>
     *//*
    public function getVille(): Collection
    {
        return $this->ville;
    }

    public function addVille(Commune $ville): self
    {
        if (!$this->ville->contains($ville)) {
            $this->ville->add($ville);
            $ville->setCodePostal($this);
        }

        return $this;
    }

    public function removeVille(Commune $ville): self
    {
        if ($this->ville->removeElement($ville)) {
            // set the owning side to null (unless already changed)
            if ($ville->getCodePostal() === $this) {
                $ville->setCodePostal(null);
            }
        }

        return $this;
    }

    public Function __toString(){
        
        return $this->CodePostal;
    }


   
}
*/


/*
$form = $this->createFormBuilder(['region' => $regionRepository->find(4)])
        ->addEventListener(FormEvents::PRE_SET_DATA, function(FormEvent $event) use ($entityManager) {
            $region = $event->getData()?? null;
            
            
            $repository = $entityManager->getRepository(Ville::class);
            $villes = $repository->findBy(['region' => $region]);
        

           
               $event ->getForm()->add('VilleName', EntityType::class, [
                    'class' => Ville::class, 
                    'label' => 'Ville :  ',
                    'choice_label' =>'villeName',
                    'disabled' => $region === null,
                    'placeholder'  => 'Sélectionnez une région',
                    'choices' => $villes,
                    'query_builder' => function ($villeRepository) use ($region) {
                        return $villeRepository->createQueryBuilder('v')
                            ->andWhere('v.region = :region')
                            ->setParameter('region', $region)
                            ->orderBy('v.VilleName', 'ASC');
                    },
    
                    ] );

                

                
                })
        
                ->add('region', EntityType::class, [
                    'class' => Region::class,
                    'label' => 'Région :  ',
                    'choice_label' => 'regionName', // la propriété de l'entité à afficher dans le champ
                    'placeholder' => 'Sélectionnez une région', // optionnel : ajout d'un placeholder
                    
                ])
        
                ->add('codePostal', EntityType::class, [
                    'class' => CodePostal::class,
                    'label' => 'Code postal : ',
                    'choice_label' => 'CodePostal', // la propriété de l'entité à afficher dans le champ
                    'placeholder' => 'Sélectionnez une code postal', // optionnel : ajout d'un placeholder
                ])
        
                ->add('submit', SubmitType::class, [
                    'label' => 'Enregistrer'
                ])
        
                ->getForm();
        
                $form->handleRequest($request);
        
                if($form -> isSubmitted() && $form-> isValid()){
                    //get data et traitement des date vers les différents entity 
                   $data = $form->getData();
        
        
                   
                   return $this->redirectToRoute('app_connexion');
                   
        
               };
        
               $form = $this->createForm(VilleType::class);
                $form->handleRequest($request);
        
                if($form -> isSubmitted() && $form-> isValid()){
                     //get data et traitement des date vers les différents entity 
                    $data = $form->getData();
        
        
                    
                    return $this->redirectToRoute('app_connexion');
                    
        
                }
                
                
                $form = $this->createForm(rechercheType::class);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $datas = $form->getData();

      
            
            $this->addFlash('success', 'Thanks for your message. We\'ll get back to you shortly.');
            return $this->redirectToRoute('app_home');
        }

                
                
                
                
                
                
                */




