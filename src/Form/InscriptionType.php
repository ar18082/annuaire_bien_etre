<?php

namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\FileType;

use App\Entity\CodePostal;
use App\Entity\Prestataire;
use App\Entity\Region;
use App\Entity\Ville;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class InscriptionType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('Nom', TextType::class, [
            'label' => 'Votre nom'
        ])
        ->add('Prenom', TextType::class, [
            'label' => 'Votre prénom'
        ])
        ->add('AdresseRue', TextType::class, [
            'label' => 'Nom de la rue'
        ])
        ->add('AdresseNumber', IntegerType::class, [
            'label' => 'Numéro de rue'
        ]) 
              
        ->add('region', EntityType::class, [
            'class' => Region::class,
            'label' => 'Région :  ',
            'placeholder'  => 'Sélectionnez une région',
            'choice_label' => 'regionName', // la propriété de l'entité à afficher dans le champ
            'choice_value' => 'regionName',    

            ])
            
            ->add('ville', EntityType::class, [
                'class' => Ville::class,
                'label' => 'ville :  ',
                'placeholder'  => 'Sélectionnez une région',
                'choice_label' => 'VilleName', // la propriété de l'entité à afficher dans le champ
                'choice_value' => 'VilleName', 
            ])

            ->add('codePostal', EntityType::class, [
                'class' => CodePostal::class,
                'label' => 'Code Postal :  ',
                'choice_label' => 'codePostal', // la propriété de l'entité à afficher dans le champ
                'choice_value' => 'codePostal',
            ])

            ->add('Image', FileType::class, [
                'label' => 'Photo de profil',
                'multiple' => false,
                'mapped' => false,
                'required' => false
            ])
            ->add('Prestataire', ChoiceType::class, [
                'label' => 'Êtes-vous un prestataire ?',
                'required' => true,
                'choices' => [
                    'Oui' => true,
                    'Non' => false,
                ],
                'expanded' => true,
                'multiple' => false,
                
                
            ])
            ->add('Nom_societe', TextType::class, [
                'label' => 'Nom société',
                'required' => false,
            ])

            ->add('Numtel', TextType::class, [
                'label' => 'Numéro de téléphone',
                'required' => false,
            ])
            ->add('Numtva', TextType::class, [
                'label' => 'Numéro de TVA',
                'required' => false,
            ])
            
            ->add('SiteInternet', TextType::class, [
                'label' => 'Site internet',
                'required' => false,
            ])

            ->add('Logo', FileType::class, [
                'label' => 'Logo',
                'multiple' => false,
                'mapped' => false,
                'required' => false
            ])
            ->add('submit', SubmitType::class, [
                'label' => 'Enregistrer'
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            // Configure your form options here
        ]);
    }
}
