Rails.application.routes.draw do
  get 'events/index'
  get 'events', to: 'events#index'

  get 'events/new', to: 'events#new'
  post 'events/', to: 'events#create'

  #{}get 'events/edit'
  #{}get 'events/show'

  get 'users/index'
  
  get 'entries/index'

  get 'entries/new', to: 'entries#new'
  post 'entries/', to: 'entries#create'
  
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    
  end

  get 'home/index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
