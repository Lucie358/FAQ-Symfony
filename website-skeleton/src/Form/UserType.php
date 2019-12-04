<?php
namespace App\Form;
use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Security\Core\Authorization\AuthorizationCheckerInterface;

class UserType extends AbstractType
{
    protected $auth;
    public function __construct(AuthorizationCheckerInterface $auth) {
        $this->auth = $auth;
    }
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        
           
            $builder  
            ->add('username')
            ->add('password')
            ->add('email');    
            
            
            if ($this->auth->isGranted(('ROLE_USER_ADMIN')){
            $builder->add('role')
            })          
            
        ;
    }
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}