<<<<<<< HEAD
CMUCrewWebsite::Application.routes.draw do

  resources :races

  resources :race_lineups

  resources :workout_types

  resources :practices

  resources :practice_lineups

  resources :boats

  resources :user_lineups

  resources :lineups

  resources :user_roles

  resources :roles

  resources :rowers

  devise_for :users
  resources :users, :controller => 'user'

  resources :fundraiser_types

  match "/home/index" => "home#index", :via => [:get]
  match "/user" => "user#index"

  
  resources :user_fundraisers  
  resources :fundraisers
  resources :home

=======
CMUCrew::Application.routes.draw do
>>>>>>> 40ff0f14b3a0b3c355693cbac787ebe8a1079e84
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
<<<<<<< HEAD
   root :to => 'home#index'
=======
  # root :to => 'welcome#index'
>>>>>>> 40ff0f14b3a0b3c355693cbac787ebe8a1079e84

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
<<<<<<< HEAD
  # match ':controller(/:action(/:id))(.:format)'
=======
  # match ':controller(/:action(/:id(.:format)))'
>>>>>>> 40ff0f14b3a0b3c355693cbac787ebe8a1079e84
end
