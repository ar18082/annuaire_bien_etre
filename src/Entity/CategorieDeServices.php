<?php

namespace App\Entity;

use App\Repository\CategorieDeServicesRepository;
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
}
