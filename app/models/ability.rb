class Ability < ActiveRecord::Base
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    if user.is? :admin
     can :manage, :all
    elsif user.is? :director
      can :manage, [Indicador, Consejero, Criterio, Tutoria]
      can [:update, :read], Perfil
      can :read, Calificacion
    elsif user.is? :docente
      can :manage, [Calificacion, Asistencia]
      can [:update, :read], Perfil
    elsif user.is? :bibliotecario
      can :manage, [Libro, PrestamoLibro]
      can [:update, :read], Perfil
    else user.is? :alumno
      #cannot :manage, [Calificacion, Asignatura, Asistencia, Carrera, Criterio, Indicador]
      can [:update, :read], Perfil
      can :read, Calificacion
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
