<?php

namespace App\Entity;

use App\Repository\StageRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: StageRepository::class)]
class Stage
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Nom = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Description = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Tarif = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $InfoComplementaire = null;

    #[ORM\Column(type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $Debut = null;

    #[ORM\Column(type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $Fin = null;

    #[ORM\Column(type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $AffichageDe = null;

    #[ORM\Column(type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $AffichageJusque = null;

    #[ORM\ManyToOne(inversedBy: 'stages')]
    private ?Prestataire $Prestataire = null;

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

    public function getTarif(): ?string
    {
        return $this->Tarif;
    }

    public function setTarif(?string $Tarif): self
    {
        $this->Tarif = $Tarif;

        return $this;
    }

    public function getInfoComplementaire(): ?string
    {
        return $this->InfoComplementaire;
    }

    public function setInfoComplementaire(?string $InfoComplementaire): self
    {
        $this->InfoComplementaire = $InfoComplementaire;

        return $this;
    }

    public function getDebut(): ?\DateTimeInterface
    {
        return $this->Debut;
    }

    public function setDebut(?\DateTimeInterface $Debut): self
    {
        $this->Debut = $Debut;

        return $this;
    }

    public function getFin(): ?\DateTimeInterface
    {
        return $this->Fin;
    }

    public function setFin(?\DateTimeInterface $Fin): self
    {
        $this->Fin = $Fin;

        return $this;
    }

    public function getAffichageDe(): ?\DateTimeInterface
    {
        return $this->AffichageDe;
    }

    public function setAffichageDe(?\DateTimeInterface $AffichageDe): self
    {
        $this->AffichageDe = $AffichageDe;

        return $this;
    }

    public function getAffichageJusque(): ?\DateTimeInterface
    {
        return $this->AffichageJusque;
    }

    public function setAffichageJusque(?\DateTimeInterface $AffichageJusque): self
    {
        $this->AffichageJusque = $AffichageJusque;

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
