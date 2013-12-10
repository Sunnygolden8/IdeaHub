Store::Application.routes.draw do

  resources :orders


  get "rating/update"

  devise_for :users
  resources :line_items
  resources :store
  resources :carts

  get "store/index"

  resources :ratings, only: :update
  resources :projects do
     resources :comments
     resources :project_roles
   end

  #root :to => 'store#index' , :as => 'store'
  #root 'users#index'

  resources :products do
    get :who_bought, :on => :member
  end

  resources :users do
     resources :rewards
   end
  
  resources :point_rules
  resources :comments

  #root :to => 'store#index' , :as => 'store'
  #root 'users#index'

  root 'welcome#index'

end
