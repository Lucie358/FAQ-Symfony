<?php

namespace App\Form;

use App\Entity\Tag;
use App\Entity\Question;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class QuestionType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', null, [
                'label' => 'Titre de ma question',
                'label_attr' => array('class' => 'sr-only'),
                'attr' => ['class' => 'form-control-add',
                'placeholder' => 'Titre de la question']
                
                
            ])
            ->add('content', null, [
                'label' => 'Ma question',

                'label_attr' => array('class' => 'sr-only'),

                'attr' => ['class' => 'form-control-add',
                            'rows' => '10'],

            ])           
            ->add('tags', EntityType::class, [
                'class' => Tag::class,
                'choice_label' => 'name',
                'multiple' => true,
                'expanded' => true,
                

                'attr' => ['class' => 'form-control-add'],

            ])
            
            
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Question::class,
        ]);
    }
}
