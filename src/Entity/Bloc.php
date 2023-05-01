<?php

namespace App\Entity;

use App\Repository\BlocRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: BlocRepository::class)]
class Bloc
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Nom = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Description = null;

    #[ORM\OneToOne(mappedBy: 'Bloc', cascade: ['persist', 'remove'])]
    private ?Position $position = null;

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

    public function getPosition(): ?Position
    {
        return $this->position;
    }

    public function setPosition(?Position $position): self
    {
        // unset the owning side of the relation if necessary
        if ($position === null && $this->position !== null) {
            $this->position->setBloc(null);
        }

        // set the owning side of the relation if necessary
        if ($position !== null && $position->getBloc() !== $this) {
            $position->setBloc($this);
        }

        $this->position = $position;

        return $this;
    }
}
