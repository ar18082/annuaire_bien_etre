<?php

namespace App\Entity;

use App\Repository\CategorieDeServicesRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CategorieDeServicesRepository::class)]
class CategorieDeServices
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Nom = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $Description = null;

    #[ORM\Column(nullable: true)]
    private ?bool $EnAvant = null;

    #[ORM\Column(nullable: true)]
    private ?bool $Valide = null;

    #[ORM\OneToMany(mappedBy: 'CategorieDeServices', targetEntity: Proposer::class)]
    private Collection $proposers;

    #[ORM\OneToMany(mappedBy: 'CategorieDeServices', targetEntity: Promotion::class)]
    private Collection $promotions;

    #[ORM\OneToMany(mappedBy: 'categorie', targetEntity: Images::class)]
    private Collection $image;

    public function __construct()
    {
        $this->proposers = new ArrayCollection();
        $this->promotions = new ArrayCollection();
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

    public function getDescription(): ?string
    {
        return $this->Description;
    }

    public function setDescription(?string $Description): self
    {
        $this->Description = $Description;

        return $this;
    }

    public function isEnAvant(): ?bool
    {
        return $this->EnAvant;
    }

    public function setEnAvant(?bool $EnAvant): self
    {
        $this->EnAvant = $EnAvant;

        return $this;
    }

    public function isValide(): ?bool
    {
        return $this->Valide;
    }

    public function setValide(?bool $Valide): self
    {
        $this->Valide = $Valide;

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
            $proposer->setCategorieDeServices($this);
        }

        return $this;
    }

    public function removeProposer(Proposer $proposer): self
    {
        if ($this->proposers->removeElement($proposer)) {
            // set the owning side to null (unless already changed)
            if ($proposer->getCategorieDeServices() === $this) {
                $proposer->setCategorieDeServices(null);
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
            $promotion->setCategorieDeServices($this);
        }

        return $this;
    }

    public function removePromotion(Promotion $promotion): self
    {
        if ($this->promotions->removeElement($promotion)) {
            // set the owning side to null (unless already changed)
            if ($promotion->getCategorieDeServices() === $this) {
                $promotion->setCategorieDeServices(null);
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
            $image->setCategorie($this);
        }

        return $this;
    }

    public function removeImage(Images $image): self
    {
        if ($this->image->removeElement($image)) {
            // set the owning side to null (unless already changed)
            if ($image->getCategorie() === $this) {
                $image->setCategorie(null);
            }
        }

        return $this;
    }
}
