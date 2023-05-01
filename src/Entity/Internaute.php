<?php

namespace App\Entity;

use App\Repository\InternauteRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: InternauteRepository::class)]
class Internaute
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Nom = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Prenom = null;

    #[ORM\Column(nullable: true)]
    private ?bool $Newsletter = null;

    #[ORM\OneToMany(mappedBy: 'Internaute', targetEntity: Favori::class)]
    private Collection $favoris;

    #[ORM\OneToMany(mappedBy: 'Internaute', targetEntity: Abus::class)]
    private Collection $abuses;

    #[ORM\OneToMany(mappedBy: 'Internaute', targetEntity: Commentaire::class)]
    private Collection $commentaires;

    #[ORM\OneToOne(mappedBy: 'Internaute', cascade: ['persist', 'remove'])]
    private ?Position $position = null;

    #[ORM\OneToMany(mappedBy: 'internaute', targetEntity: Utilisateur::class)]
    private Collection $utilisateurs;

    

    public function __construct()
    {
        $this->favoris = new ArrayCollection();
        $this->abuses = new ArrayCollection();
        $this->commentaires = new ArrayCollection();
        $this->utilisateurs = new ArrayCollection();
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

    public function getPrenom(): ?string
    {
        return $this->Prenom;
    }

    public function setPrenom(?string $Prenom): self
    {
        $this->Prenom = $Prenom;

        return $this;
    }

    public function isNewsletter(): ?bool
    {
        return $this->Newsletter;
    }

    public function setNewsletter(?bool $Newsletter): self
    {
        $this->Newsletter = $Newsletter;

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
            $favori->setInternaute($this);
        }

        return $this;
    }

    public function removeFavori(Favori $favori): self
    {
        if ($this->favoris->removeElement($favori)) {
            // set the owning side to null (unless already changed)
            if ($favori->getInternaute() === $this) {
                $favori->setInternaute(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Abus>
     */
    public function getAbuses(): Collection
    {
        return $this->abuses;
    }

    public function addAbuse(Abus $abuse): self
    {
        if (!$this->abuses->contains($abuse)) {
            $this->abuses->add($abuse);
            $abuse->setInternaute($this);
        }

        return $this;
    }

    public function removeAbuse(Abus $abuse): self
    {
        if ($this->abuses->removeElement($abuse)) {
            // set the owning side to null (unless already changed)
            if ($abuse->getInternaute() === $this) {
                $abuse->setInternaute(null);
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
            $commentaire->setInternaute($this);
        }

        return $this;
    }

    public function removeCommentaire(Commentaire $commentaire): self
    {
        if ($this->commentaires->removeElement($commentaire)) {
            // set the owning side to null (unless already changed)
            if ($commentaire->getInternaute() === $this) {
                $commentaire->setInternaute(null);
            }
        }

        return $this;
    }

    public function getPosition(): ?Position
    {
        return $this->position;
    }

    public function setPosition(?Position $position): self
    {
        // unset the owning side of the relation if necessary
        if ($position === null && $this->position !== null) {
            $this->position->setInternaute(null);
        }

        // set the owning side of the relation if necessary
        if ($position !== null && $position->getInternaute() !== $this) {
            $position->setInternaute($this);
        }

        $this->position = $position;

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
            $utilisateur->setInternaute($this);
        }

        return $this;
    }

    public function removeUtilisateur(Utilisateur $utilisateur): self
    {
        if ($this->utilisateurs->removeElement($utilisateur)) {
            // set the owning side to null (unless already changed)
            if ($utilisateur->getInternaute() === $this) {
                $utilisateur->setInternaute(null);
            }
        }

        return $this;
    }

    
}
