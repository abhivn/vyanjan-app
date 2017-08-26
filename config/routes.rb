Rails.application.routes.draw do
  resources :ingredients
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { registrations: 'registrations' }
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :recipes
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
