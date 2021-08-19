Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  get 'all_articles', to: 'articles#all_articles'
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'dashboard', to: 'dashboard#index'
  resources :articles
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
