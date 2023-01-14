<?php

namespace App\Entity;

use App\Repository\PrestataireRepository;
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
}
