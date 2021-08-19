Rails.application.routes.draw do
  devise_for :users
  get 'all_articles', to: 'articles#all_articles'
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'users/:id' => 'users#show'
  get 'users' => 'users#index'
  get 'dashboard', to: 'dashboard#index'
  resources :articles
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
