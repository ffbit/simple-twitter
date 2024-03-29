SimpleTwitter::Application.routes.draw do
  
  resources :users, :only => [:show, :index]
  
  resources :tweets, :only => [:create, :destroy]
  post 'more' => 'tweets#more', :as => :more_tweets
  
  resources :relationships, :only => [:destroy, :update]
  
  devise_for :users, :controllers => { :sessions => :sessions,
                                       :registrations => :registrations },
                     :skip => [:sessions] do
    # sessions
    get 'signin' => 'sessions#new', :as => :new_user_session
    post 'signin' => 'sessions#create', :as => :user_session
    get 'signout' => 'sessions#destroy', :as => :destroy_user_session
    
    # registrations
    get 'signup' => 'registrations#new', :as => :new_user_registration
    post 'signup' => 'registrations#create', :as => :user_registration
    # TODO: registrations edit get and edit post
    get 'edit' => 'registrations#edit', :as => :edit_user_registration
    put 'signup' => 'registrations#update'
    
    # redirection after successful sing in
    get 'users/show' => 'users#show', :as => :user_root
  end
  
  devise_scope :user do 
    root :to => "sessions#new"
    get 'confirmation' => 'devise/confirmations#show', 
  end
  
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
