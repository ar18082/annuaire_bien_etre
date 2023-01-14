<?php

namespace App\Entity;

use App\Repository\PositionRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PositionRepository::class)]
class Position
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(nullable: true)]
    private ?int $Ordre = null;

    #[ORM\OneToOne(inversedBy: 'position', cascade: ['persist', 'remove'])]
    private ?Bloc $Bloc = null;

    #[ORM\OneToOne(inversedBy: 'position', cascade: ['persist', 'remove'])]
    private ?Internaute $Internaute = null;

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

    public function getBloc(): ?Bloc
    {
        return $this->Bloc;
    }

    public function setBloc(?Bloc $Bloc): self
    {
        $this->Bloc = $Bloc;

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
