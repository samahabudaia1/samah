Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
 devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => { :registration => "registrations" }
   resources :products
resources :orders, only: [:index, :show, :create, :destroy] 
  resources :users, only: [:new, :create, :edit, :update, :destroy]
  resources :products do
  resources :comments
end
resources :users
  post '/pages/thank_you'
    post '/orders/show'

 get '/products/:id', to: 'products#show'
  get '/products', to: 'products#index'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/landing_page'
  root 'pages#landing_page'

 
  
end

