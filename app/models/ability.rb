class Ability < ActiveRecord::Base
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    if user.is? :admin
     can :manage, :all
    elsif user.is? :director
      can :manage, [Indicador, Consejero, Criterio, Tutoria]
      #cannot :manage, [Calificacion, Carrera, libro, Grado, Grupo]
      can :update, Perfil
    elsif user.is? :docente
      can :manage, [Calificacion, Asistencia]
        #no puede actualizar su perfil
      can :update, Perfil
      #cannot :manage, [Carrera, Criterio, Indicador, Libro]
    elsif user.is? :bibliotecario
      can :manage, [Libro, PrestamoLibro]
      #cannot :manage, [Calificacion, Asignatura, Asistencia, Carrera, Criterio, Indicador]
      #no puede actualizar su perfil
      can :update, Perfil
    else user.is? :alumno
      #cannot :manage, [Calificacion, Asignatura, Asistencia, Carrera, Criterio, Indicador]
      can :update, Perfil
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
