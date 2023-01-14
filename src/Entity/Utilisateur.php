<?php

namespace App\Entity;

use App\Repository\UtilisateurRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: UtilisateurRepository::class)]
class Utilisateur
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Email = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $MotDePasse = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $AdresseN° = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $AdresseRue = null;

    #[ORM\Column(type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $Inscription = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $TypeUtilisateur = null;

    #[ORM\Column(nullable: true)]
    private ?int $NbEssaisInfructueux = null;

    #[ORM\Column(nullable: true)]
    private ?bool $Banni = null;

    #[ORM\Column(nullable: true)]
    private ?bool $InscriptConf = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEmail(): ?string
    {
        return $this->Email;
    }

    public function setEmail(?string $Email): self
    {
        $this->Email = $Email;

        return $this;
    }

    public function getMotDePasse(): ?string
    {
        return $this->MotDePasse;
    }

    public function setMotDePasse(?string $MotDePasse): self
    {
        $this->MotDePasse = $MotDePasse;

        return $this;
    }

    public function getAdresseN°(): ?string
    {
        return $this->AdresseN°;
    }

    public function setAdresseN°(?string $AdresseN°): self
    {
        $this->AdresseN° = $AdresseN°;

        return $this;
    }

    public function getAdresseRue(): ?string
    {
        return $this->AdresseRue;
    }

    public function setAdresseRue(?string $AdresseRue): self
    {
        $this->AdresseRue = $AdresseRue;

        return $this;
    }

    public function getInscription(): ?\DateTimeInterface
    {
        return $this->Inscription;
    }

    public function setInscription(?\DateTimeInterface $Inscription): self
    {
        $this->Inscription = $Inscription;

        return $this;
    }

    public function getTypeUtilisateur(): ?string
    {
        return $this->TypeUtilisateur;
    }

    public function setTypeUtilisateur(?string $TypeUtilisateur): self
    {
        $this->TypeUtilisateur = $TypeUtilisateur;

        return $this;
    }

    public function getNbEssaisInfructueux(): ?int
    {
        return $this->NbEssaisInfructueux;
    }

    public function setNbEssaisInfructueux(?int $NbEssaisInfructueux): self
    {
        $this->NbEssaisInfructueux = $NbEssaisInfructueux;

        return $this;
    }

    public function isBanni(): ?bool
    {
        return $this->Banni;
    }

    public function setBanni(?bool $Banni): self
    {
        $this->Banni = $Banni;

        return $this;
    }

    public function isInscriptConf(): ?bool
    {
        return $this->InscriptConf;
    }

    public function setInscriptConf(?bool $InscriptConf): self
    {
        $this->InscriptConf = $InscriptConf;

        return $this;
    }
}
