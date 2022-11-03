Rails.application.routes.draw do
  # resources :posts
  resources :upls
  resources :posts do 
    resources :comments

  end
  resources :projects do
    resources :tasks
    resources :upls
    resources :posts do 
    resources :comments
  end
  end
  resources :tasks

  root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
