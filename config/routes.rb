CalificaMe::Application.routes.draw do  resources :empresas
  resources :vinculaciones
  resources :libros
  resources :calificaciones
  resources :encuestas do
    member do
      get 'respuestas'
    end
  end

  devise_for :users
  resources :welcome
  resources :directores
  resources :profesores
  resources :alumnos
  resources :bibliotecarios
  resources :libros
  resources :calificaciones
  resources :asignaturas
  resources :asistencias
  resources :perfiles
  resources :grados
  resources :grupos
  resources :carreras
  resources :dashboard
  resources :criterios
  resources :prestamo_libros
  resources :tutorias
  resources :indicadores
  resources :docentes
  resources :consejeros
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
  root 'perfiles#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
