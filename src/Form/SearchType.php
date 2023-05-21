<?php

namespace App\Form;

use App\Entity\CodePostal;
use App\Entity\Prestataire;
use App\Entity\Region;
use App\Entity\Ville;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;

use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class SearchType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder

            -> add('prestataire', TextType::class, [
                
               'label' => 'Prestataire : ',
               'required' =>false,
                
            ])

            ->add('region', EntityType::class, [
            'class' => Region::class,
            'label' => 'Région :  ',
            'required' =>false,
            'placeholder'  => 'Sélectionnez une région',
            'choice_label' => 'regionName', // la propriété de l'entité à afficher dans le champ
            'choice_value' => 'regionName',    

            ])
            
            ->add('ville', EntityType::class, [
                'class' => Ville::class,
                'label' => 'ville :  ',
                'required' =>false,
                'placeholder'  => 'Sélectionnez une ville',
                'choice_label' => 'VilleName', // la propriété de l'entité à afficher dans le champ
                'choice_value' => 'VilleName', 
            ])

            ->add('codePostal', EntityType::class, [
                'class' => CodePostal::class,
                'label' => 'Code Postal :  ',
                'required' =>false,
                'choice_label' => 'codePostal', // la propriété de l'entité à afficher dans le champ
                'choice_value' => 'codePostal',
            ])

            
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            // Configure your form options here
            'method' =>'GET',
        ]);
    }
}
