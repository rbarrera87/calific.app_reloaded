ActiveAdmin.register RelGradoGrupo do
  #filter :grupo, as: :select, collection: proc {Grupo.where(id: 1).map{|g| [g.nombre, g.id]}}
  #filter :grado, as: :select, collection: proc {Grado.where(id: 1).map{|g| [g.nombre, g.id]}}
  #belongs_to :grado, class_name: Grado

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :grado_id, :grupo_id
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

end
