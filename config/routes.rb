
Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
 devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}, controllers: { registrations: "user_registrations" } 
  
  resources :products do
  resources :comments
end

  resources :users
  resources :orders, only: [:index, :show, :create, :destroy]
  
  root 'pages#landing_page'

  
  get 'pages/', to: 'pages#index' 
  get 'pages/about'
  get 'pages/contact'
  get 'pages/landing_page'
  get 'pages/index'
  post 'pages/thank_you'

  post 'payments/create', to:'payments#create'

  mount ActionCable.server => '/cable'

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end