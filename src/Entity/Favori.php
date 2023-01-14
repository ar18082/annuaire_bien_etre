<?php

namespace App\Entity;

use App\Repository\FavoriRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: FavoriRepository::class)]
class Favori
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne(inversedBy: 'favoris')]
    private ?Prestataire $Presataire = null;

    #[ORM\ManyToOne(inversedBy: 'favoris')]
    private ?Internaute $Internaute = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getPresataire(): ?Prestataire
    {
        return $this->Presataire;
    }

    public function setPresataire(?Prestataire $Presataire): self
    {
        $this->Presataire = $Presataire;

        return $this;
    }

    public function getInternaute(): ?Internaute
    {
        return $this->Internaute;
    }

    public function setInternaute(?Internaute $Internaute): self
    {
        $this->Internaute = $Internaute;

        return $this;
    }
}
