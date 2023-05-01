<?php

namespace App\Form;

use App\Entity\CodePostal;
use App\Entity\Ville;
use App\Entity\Region;
use App\Repository\RegionRepository;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;

class VilleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder           
            
            ->add('region', EntityType::class, [
                'class' => Region::class,
                'choice_label' => 'regionName', // la propriété de l'entité à afficher dans le champ
                'placeholder' => 'Sélectionnez une région', // optionnel : ajout d'un placeholder
                
            ])

            ->addEventListener(FormEvents::PRE_SET_DATA, function(FormEvent $event){
                dd($event->getData()['region']);
            })

            ->add('VilleName', EntityType::class, [
                'class' =>Ville::class, 
                'choice_label' =>'villeName',
                'placeholder'  => 'Sélectionnez une région',

            ] )
            ->add('codePostal', EntityType::class, [
                'class' => CodePostal::class,
                'choice_label' => 'CodePostal', // la propriété de l'entité à afficher dans le champ
                'placeholder' => 'Sélectionnez une code postal', // optionnel : ajout d'un placeholder
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Ville::class,
            
        ]);
    }
}
