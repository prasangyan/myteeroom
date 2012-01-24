Myteeroom::Application.routes.draw do

  resource :tinies
	match "/store", :to => "store#list", :as => "store"
  resources :user_sessions

  resources :users

  resources :line_items

  resources :items

  resources :carts

	get "store/list"
  get "store/index"

  resources :products

	resources :store

	get "home/index"



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
	match "/login" , :to => "user_sessions#new"  , :as => "login"
  match "/logout" , :to => "user_sessions#destroy" , :as => "logout"
  match "/register", :to => "users#new", :as => "register"
  match "/", :to => "store#index", :as => "root"
  match "/add_to_cart/:product_id", :to => "carts#add_to_cart", :as => "add_to_cart"
  match ':controller(/:action(/:id))'
  root :to => 'store#index', :as => 'store'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.

end
