<?php

namespace App\Entity;

use App\Repository\ImagesRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ImagesRepository::class)]
class Images
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(nullable: true)]
    private ?int $Ordre = null;

    #[ORM\Column(type: Types::BLOB, nullable: true)]
    private $Image = null;

    #[ORM\OneToOne(cascade: ['persist', 'remove'])]
    private ?CategorieDeServices $CategorieDeServices = null;

    #[ORM\OneToOne(cascade: ['persist', 'remove'])]
    private ?Internaute $Internaute = null;

    #[ORM\OneToOne(cascade: ['persist', 'remove'])]
    private ?Prestataire $Prestataire = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getOrdre(): ?int
    {
        return $this->Ordre;
    }

    public function setOrdre(?int $Ordre): self
    {
        $this->Ordre = $Ordre;

        return $this;
    }

    public function getImage()
    {
        return $this->Image;
    }

    public function setImage($Image): self
    {
        $this->Image = $Image;

        return $this;
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

    public function getInternaute(): ?Internaute
    {
        return $this->Internaute;
    }

    public function setInternaute(?Internaute $Internaute): self
    {
        $this->Internaute = $Internaute;

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
