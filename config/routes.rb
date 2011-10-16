CampusTaps::Application.routes.draw do

  get "home/index"
  root :to => "home#index"

  # general resources
  resources :events, :colleges, :reviews, :products, :posts
  
  # polymorphic routes for reviews
  resources :bars, :has_many => :reviews
  resources :stores, :has_many => :reviews
  resources :restaurants, :has_many => :reviews

  # devise routes
  devise_for :admins, :path => '/webadmin',  :path_names => { :sign_in => 'admin-login', :sign_out => 'admin-logout' }
  devise_for :managers, :path => '/managers', :path_names => { :sign_in => 'manager-login', :sign_out => 'manager-logout' }
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :sign_out => 'users/sign_out' }

  # webadmin routes
  namespace :webadmin do
    resources :bars, :stores, :restaurants, :colleges, :posts
  end
  
  match '/blog' => 'posts#index'
  match '/blog/:id' => 'posts#show'

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

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
