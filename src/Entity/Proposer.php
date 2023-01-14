<?php

namespace App\Entity;

use App\Repository\ProposerRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ProposerRepository::class)]
class Proposer
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne(inversedBy: 'proposers')]
    private ?CategorieDeServices $CategorieDeServices = null;

    #[ORM\ManyToOne(inversedBy: 'proposers')]
    private ?Prestataire $Prestataire = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCategorieDeServices(): ?CategorieDeServices
    {
        return $this->CategorieDeServices;
    }

    public function setCategorieDeServices(?CategorieDeServices $CategorieDeServices): self
    {
        $this->CategorieDeServices = $CategorieDeServices;

        return $this;
    }

    public function getPrestataire(): ?Prestataire
    {
        return $this->Prestataire;
    }

    public function setPrestataire(?Prestataire $Prestataire): self
    {
        $this->Prestataire = $Prestataire;

        return $this;
    }
}
