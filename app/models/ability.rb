class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #

    #   user ||= User.new # guest user (not logged in)
    if user.is? :admin
           can :manage, :all
    #       cannot [:create], @Asignatura
    elsif user.is? :director
      can [:create, :update, :create], @Tutoria
      can :manage, @Criterio
      can :manage, @Indicador
      can [:update, :destroy, :create], @Consejero  
      cannot :manage, @Calificacion_
      can :update, @Perfil_
    elsif user.is? :docente
      can :manage, @Calificacion_
      can [:update, :create], @Asistencia
      can :update, @Perfil_
    elsif user.is? :bibliotecario
      can :manage, @Libro_
      can :manage, @PrestamoLibro_
      cannot :manage, @Calificacion_
      can :update, @Perfil_
    end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
