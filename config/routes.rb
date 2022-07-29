Rails.application.routes.draw do
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
