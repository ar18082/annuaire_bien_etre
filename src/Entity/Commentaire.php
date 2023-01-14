<?php

namespace App\Entity;

use App\Repository\CommentaireRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CommentaireRepository::class)]
class Commentaire
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Titre = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Contenu = null;

    #[ORM\Column(nullable: true)]
    private ?int $Cote = null;

    #[ORM\Column(type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $Encodage = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitre(): ?string
    {
        return $this->Titre;
    }

    public function setTitre(?string $Titre): self
    {
        $this->Titre = $Titre;

        return $this;
    }

    public function getContenu(): ?string
    {
        return $this->Contenu;
    }

    public function setContenu(?string $Contenu): self
    {
        $this->Contenu = $Contenu;

        return $this;
    }

    public function getCote(): ?int
    {
        return $this->Cote;
    }

    public function setCote(?int $Cote): self
    {
        $this->Cote = $Cote;

        return $this;
    }

    public function getEncodage(): ?\DateTimeInterface
    {
        return $this->Encodage;
    }

    public function setEncodage(?\DateTimeInterface $Encodage): self
    {
        $this->Encodage = $Encodage;

        return $this;
    }
}
