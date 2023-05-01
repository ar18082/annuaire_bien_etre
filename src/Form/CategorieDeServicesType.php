<?php

namespace App\Form;

use App\Entity\CategorieDeServices;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;


class CategorieDeServicesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('Nom', TextType::class, [
            'label' => 'Nom de la catégorie'
        ])
        ->add('Description', TextType::class, [
            'label' => 'Description de la catégorie'
        ])
        ->add('submit', SubmitType::class, [
            'label' => 'Enregistrer'
        ])
    ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => CategorieDeServices::class,
        ]);
    }
}
