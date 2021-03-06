Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/about'
  get 'pages/contact'
  get 'pages/link'
  root 'topics#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :topics do
    resources :toots
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
