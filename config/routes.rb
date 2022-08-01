Rails.application.routes.draw do

# URLS for invite model
  get 'invites/index'
  get 'invites/', to: 'invites#index'

  get 'invites/new', to: 'invites#new'
  post 'invites/', to: 'invites#create'

# URLS ofr Event model
  get 'events/index'
  get 'events/', to: 'events#index'

  get 'events/new', to: 'events#new'
  post 'events/', to: 'events#create'

 
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
