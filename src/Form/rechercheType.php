<?php
   namespace App\Form;

use App\Entity\Region;
use App\Entity\CodePostal;
use App\Entity\Ville;
use App\Repository\CodePostalRepository;
use App\Repository\VilleRepository;
use App\Repository\RegionRepository;


use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;
use Symfony\Component\Form\FormInterface;

class rechercheType extends AbstractType
{

    public function __construct(private VilleRepository $villeRepository, private RegionRepository $regionRepository){
        $this->regionRepository = $regionRepository;
        $this->villeRepository = $villeRepository;
    }

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('region', EntityType::class, [
                'class' => Region::class,
                'label' => 'Région :  ',
                'choice_label' => 'regionName', // la propriété de l'entité à afficher dans le champ
                'placeholder' => 'Sélectionnez une région', // optionnel : ajout d'un placeholder
                'query_builder' => fn (RegionRepository $regionRepository) =>
                    $regionRepository->findAllOrderedByAscNameQueryBuilder()
            ]);

            

       $formModifier = function (FormInterface $form, Region $region = null) {
                $villes = $region === null ? [] : $this->villeRepository->findByCountryOrderedByAscName($region);

                
                
                $form->add('VilleName', EntityType::class, [
                    'class' => Ville::class,
                    'choice_label' => 'VilleName',
                    'disabled' => $region === null,
                    'placeholder' => 'Choisir une ville',
                    'choices' => $villes
                ]);
        };

        

        $builder->addEventListener(
            FormEvents::PRE_SET_DATA,
            function (FormEvent $event) use ($formModifier) {
                $data = $event->getData();
                
                if($data == null ){
                    $formModifier($event->getForm(), $data);

                }else{
                    $formModifier($event->getForm(), $data['region']);
                }
                
                
           
            }
        );

        $builder->get('region')->addEventListener(
            FormEvents::POST_SUBMIT,
            function (FormEvent $event) use ($formModifier) {
                $region = $event->getForm()->getData();

               
                $formModifier($event->getForm()->getParent(), $region);
            }
        );
    
    }

    

    public function configureOptions(OptionsResolver $resolver)
    {
        

        $resolver -> setDefaults([
            'method' => 'GET',
            'csrf_protection' => false,
            'data' =>[                
                'region' => $this->regionRepository->findOneBy(['regionName'=> 'Brabant flamand']),
            ],
        ]);

    }
}

