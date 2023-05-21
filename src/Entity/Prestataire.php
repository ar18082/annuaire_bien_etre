<?php

namespace App\Entity;

use App\Repository\PrestataireRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PrestataireRepository::class)]
class Prestataire
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Nom = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $SiteInternet = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Numtel = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Numtva = null;

    #[ORM\OneToMany(mappedBy: 'Presataire', targetEntity: Favori::class)]
    private Collection $favoris;

    #[ORM\OneToMany(mappedBy: 'Prestataire', targetEntity: Proposer::class)]
    private Collection $proposers;

    #[ORM\OneToMany(mappedBy: 'Prestataire', targetEntity: Commentaire::class)]
    private Collection $commentaires;

    

    #[ORM\OneToMany(mappedBy: 'Prestataire', targetEntity: Promotion::class)]
    private Collection $promotions;

    #[ORM\OneToMany(mappedBy: 'Prestataire', targetEntity: Stage::class)]
    private Collection $stages;

    #[ORM\OneToOne(inversedBy: 'prestataire', cascade: ['persist', 'remove'])]
    private ?Utilisateur $Utilisateur = null;

    #[ORM\OneToMany(mappedBy: 'prestataire', targetEntity: Utilisateur::class)]
    private Collection $utilisateurs;

    #[ORM\OneToMany(mappedBy: 'prestataire', targetEntity: Images::class)]
    private Collection $image;

    public function __construct()
    {
        $this->favoris = new ArrayCollection();
        $this->proposers = new ArrayCollection();
        $this->commentaires = new ArrayCollection();
        
        $this->promotions = new ArrayCollection();
        $this->stages = new ArrayCollection();
        $this->utilisateurs = new ArrayCollection();
        $this->image = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->Nom;
    }

    public function setNom(?string $Nom): self
    {
        $this->Nom = $Nom;

        return $this;
    }

    public function getSiteInternet(): ?string
    {
        return $this->SiteInternet;
    }

    public function setSiteInternet(?string $SiteInternet): self
    {
        $this->SiteInternet = $SiteInternet;

        return $this;
    }

    public function getNumtel(): ?string
    {
        return $this->Numtel;
    }

    public function setNumtel(?string $Numtel): self
    {
        $this->Numtel = $Numtel;

        return $this;
    }

    public function getNumtva(): ?string
    {
        return $this->Numtva;
    }

    public function setNumtva(?string $Numtva): self
    {
        $this->Numtva = $Numtva;

        return $this;
    }

    /**
     * @return Collection<int, Favori>
     */
    public function getFavoris(): Collection
    {
        return $this->favoris;
    }

    public function addFavori(Favori $favori): self
    {
        if (!$this->favoris->contains($favori)) {
            $this->favoris->add($favori);
            $favori->setPresataire($this);
        }

        return $this;
    }

    public function removeFavori(Favori $favori): self
    {
        if ($this->favoris->removeElement($favori)) {
            // set the owning side to null (unless already changed)
            if ($favori->getPresataire() === $this) {
                $favori->setPresataire(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Proposer>
     */
    public function getProposers(): Collection
    {
        return $this->proposers;
    }

    public function addProposer(Proposer $proposer): self
    {
        if (!$this->proposers->contains($proposer)) {
            $this->proposers->add($proposer);
            $proposer->setPrestataire($this);
        }

        return $this;
    }

    public function removeProposer(Proposer $proposer): self
    {
        if ($this->proposers->removeElement($proposer)) {
            // set the owning side to null (unless already changed)
            if ($proposer->getPrestataire() === $this) {
                $proposer->setPrestataire(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Commentaire>
     */
    public function getCommentaires(): Collection
    {
        return $this->commentaires;
    }

    public function addCommentaire(Commentaire $commentaire): self
    {
        if (!$this->commentaires->contains($commentaire)) {
            $this->commentaires->add($commentaire);
            $commentaire->setPrestataire($this);
        }

        return $this;
    }

    public function removeCommentaire(Commentaire $commentaire): self
    {
        if ($this->commentaires->removeElement($commentaire)) {
            // set the owning side to null (unless already changed)
            if ($commentaire->getPrestataire() === $this) {
                $commentaire->setPrestataire(null);
            }
        }

        return $this;
    }

   

    /**
     * @return Collection<int, Promotion>
     */
    public function getPromotions(): Collection
    {
        return $this->promotions;
    }

    public function addPromotion(Promotion $promotion): self
    {
        if (!$this->promotions->contains($promotion)) {
            $this->promotions->add($promotion);
            $promotion->setPrestataire($this);
        }

        return $this;
    }

    public function removePromotion(Promotion $promotion): self
    {
        if ($this->promotions->removeElement($promotion)) {
            // set the owning side to null (unless already changed)
            if ($promotion->getPrestataire() === $this) {
                $promotion->setPrestataire(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Stage>
     */
    public function getStages(): Collection
    {
        return $this->stages;
    }

    public function addStage(Stage $stage): self
    {
        if (!$this->stages->contains($stage)) {
            $this->stages->add($stage);
            $stage->setPrestataire($this);
        }

        return $this;
    }

    public function removeStage(Stage $stage): self
    {
        if ($this->stages->removeElement($stage)) {
            // set the owning side to null (unless already changed)
            if ($stage->getPrestataire() === $this) {
                $stage->setPrestataire(null);
            }
        }

        return $this;
    }

    public function getUtilisateur(): ?Utilisateur
    {
        return $this->Utilisateur;
    }

    public function setUtilisateur(?Utilisateur $Utilisateur): self
    {
        $this->Utilisateur = $Utilisateur;

        return $this;
    }

    /**
     * @return Collection<int, Utilisateur>
     */
    public function getUtilisateurs(): Collection
    {
        return $this->utilisateurs;
    }

    public function addUtilisateur(Utilisateur $utilisateur): self
    {
        if (!$this->utilisateurs->contains($utilisateur)) {
            $this->utilisateurs->add($utilisateur);
            $utilisateur->setPrestataire($this);
        }

        return $this;
    }

    public function removeUtilisateur(Utilisateur $utilisateur): self
    {
        if ($this->utilisateurs->removeElement($utilisateur)) {
            // set the owning side to null (unless already changed)
            if ($utilisateur->getPrestataire() === $this) {
                $utilisateur->setPrestataire(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Images>
     */
    public function getImage(): Collection
    {
        return $this->image;
    }

    public function addImage(Images $image): self
    {
        if (!$this->image->contains($image)) {
            $this->image->add($image);
            $image->setPrestataire($this);
        }

        return $this;
    }

    public function removeImage(Images $image): self
    {
        if ($this->image->removeElement($image)) {
            // set the owning side to null (unless already changed)
            if ($image->getPrestataire() === $this) {
                $image->setPrestataire(null);
            }
        }

        return $this;
    }
}
