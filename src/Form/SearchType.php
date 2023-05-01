<?php

namespace App\Form;

use App\Entity\CodePostal;
use App\Entity\Region;
use App\Entity\Ville;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SearchType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('region', EntityType::class, [
            'class' => Region::class,
            'label' => 'Région :  ',
            'choice_label' => 'regionName', // la propriété de l'entité à afficher dans le champ
            ])
            
            ->add('ville', EntityType::class, [
                'class' => Ville::class,
                'label' => 'ville :  ',
                'choice_label' => 'VilleName', // la propriété de l'entité à afficher dans le champ
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
