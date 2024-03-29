<?php

namespace App\Form;

use App\Entity\Utilisateur;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UtilisateurType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('email')
            ->add('roles')
            ->add('password')
            ->add('AdresseNumber')
            ->add('AdresseRue')
            ->add('inscription')
            ->add('TypeUtilisateur')
            ->add('NbEssaisInfructueux')
            ->add('Banni')
            ->add('inscriptConfirm')
            ->add('isVerified')
            ->add('internaute')
            ->add('prestataire')
            ->add('commune')
            ->add('localite')
            ->add('CodePostal')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Utilisateur::class,
        ]);
    }
}
