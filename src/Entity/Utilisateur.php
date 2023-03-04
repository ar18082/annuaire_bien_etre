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
    private ?string $AdresseN = null;

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

   

    #[ORM\ManyToOne(inversedBy: 'utilisateurs')]
    private ?CodePostal $CodePostal = null;

    #[ORM\ManyToOne(inversedBy: 'utilisateurs')]
    private ?Commune $Commune = null;

    #[ORM\OneToOne(cascade: ['persist', 'remove'])]
    private ?Internaute $Internaute = null;

    #[ORM\ManyToOne(inversedBy: 'utilisateurs')]
    private ?Localite $Localite = null;

    #[ORM\OneToOne(mappedBy: 'Utilisateur', cascade: ['persist', 'remove'])]
    private ?Prestataire $prestataire = null;

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

    public function getAdresseN(): ?string
    {
        return $this->AdresseN;
    }

    public function setAdresseN(?string $AdresseN): self
    {
        $this->AdresseN = $AdresseN;

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

    

    public function getCodePostal(): ?CodePostal
    {
        return $this->CodePostal;
    }

    public function setCodePostal(?CodePostal $CodePostal): self
    {
        $this->CodePostal = $CodePostal;

        return $this;
    }

    public function getCommune(): ?Commune
    {
        return $this->Commune;
    }

    public function setCommune(?Commune $Commune): self
    {
        $this->Commune = $Commune;

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

    public function getLocalite(): ?Localite
    {
        return $this->Localite;
    }

    public function setLocalite(?Localite $Localite): self
    {
        $this->Localite = $Localite;

        return $this;
    }

    public function getPrestataire(): ?Prestataire
    {
        return $this->prestataire;
    }

    public function setPrestataire(?Prestataire $prestataire): self
    {
        // unset the owning side of the relation if necessary
        if ($prestataire === null && $this->prestataire !== null) {
            $this->prestataire->setUtilisateur(null);
        }

        // set the owning side of the relation if necessary
        if ($prestataire !== null && $prestataire->getUtilisateur() !== $this) {
            $prestataire->setUtilisateur($this);
        }

        $this->prestataire = $prestataire;

        return $this;
    }
}
