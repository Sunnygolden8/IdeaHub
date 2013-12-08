Store::Application.routes.draw do

<<<<<<< HEAD

  resources :orders


  get "rating/update"


=======
  resources :orders

  get "rating/update"

>>>>>>> upstream/master
  devise_for :users
  resources :line_items
  resources :store
  resources :carts

<<<<<<< HEAD

  get "store/index"


  resources :products


  resources :users 


=======
  get "store/index"

  resources :products

  resources :users 

>>>>>>> upstream/master
  
  resources :ratings, only: :update
  resources :projects do
     resources :comments
     resources :project_roles
   end

<<<<<<< HEAD

  #root :to => 'store#index' , :as => 'store'
  #root 'users#index'


=======
  #root :to => 'store#index' , :as => 'store'
  #root 'users#index'

>>>>>>> upstream/master
  resources :products do
    get :who_bought, :on => :member
  end

<<<<<<< HEAD

=======
>>>>>>> upstream/master
  resources :users 
  resources :point_rules
  resources :comments

<<<<<<< HEAD

=======
>>>>>>> upstream/master
  resources :ratings, only: :update
  resources :projects do
     resources :comments
     resources :project_roles
   end

<<<<<<< HEAD

  #root :to => 'store#index' , :as => 'store'
  #root 'users#index'


=======
  #root :to => 'store#index' , :as => 'store'
  #root 'users#index'

>>>>>>> upstream/master
  
  #root :to => 'store#index' , :as => 'store'
  root 'welcome#index'

<<<<<<< HEAD

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  # You can have the root of your site routed with "root"
  # root 'welcome#index'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'


  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase


  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products


=======
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

>>>>>>> upstream/master
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

<<<<<<< HEAD

=======
>>>>>>> upstream/master
  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

<<<<<<< HEAD

=======
>>>>>>> upstream/master
  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

<<<<<<< HEAD

=======
>>>>>>> upstream/master
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

<<<<<<< HEAD

=======
>>>>>>> upstream/master
  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
<<<<<<< HEAD

=======
>>>>>>> upstream/master
