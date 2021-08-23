Rails.application.routes.draw do
  devise_for :users
    devise_scope :user do
      get 'sign_up', to: 'devise/registrations#new'
      post 'sign_up', to: 'devise/registrations#create'
      get 'login', to: 'devise/sessions#new'
      post 'login', to: 'devise/sessions#create'
      delete 'logout', to: 'devise/sessions#destroy'
      
    end
  get 'all_articles', to: 'articles#all_articles'
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'users/:id', to: 'users#show'
  get 'users_all', to: 'users#index'
  get 'dashboard', to: 'dashboard#index'
  resources :articles
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
