<?php

namespace App\Form;

use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ConnexionType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('Email', EmailType::class, [
                'label' => 'Votre E-mail', 
                //'placeholder' => 'name@example.com',

            ])
            ->add('Password', PasswordType::class, [
                'label' => 'Votre mot de passe', 
                //'placeholder' => 'Mot de passe ',

            ])
            ->add('submit', SubmitType::class, [
                'label' => 'Connexion', 
                

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
