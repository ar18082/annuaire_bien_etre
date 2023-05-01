<?php

namespace App\Entity;

use App\Repository\AbusRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: AbusRepository::class)]
class Abus
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Description = null;

    #[ORM\Column(type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $Encodage = null;

    #[ORM\ManyToOne(inversedBy: 'abuses')]
    private ?Internaute $Internaute = null;

    #[ORM\ManyToOne(inversedBy: 'abuses')]
    private ?Commentaire $Commentaire = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDescription(): ?string
    {
        return $this->Description;
    }

    public function setDescription(string $Description): self
    {
        $this->Description = $Description;

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

    public function getInternaute(): ?Internaute
    {
        return $this->Internaute;
    }

    public function setInternaute(?Internaute $Internaute): self
    {
        $this->Internaute = $Internaute;

        return $this;
    }

    public function getCommentaire(): ?Commentaire
    {
        return $this->Commentaire;
    }

    public function setCommentaire(?Commentaire $Commentaire): self
    {
        $this->Commentaire = $Commentaire;

        return $this;
    }
}
