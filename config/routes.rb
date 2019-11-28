Rails.application.routes.draw do
  resources :contacts
  resources :services
  resources :abouts
  resources :townships
  resources :citysuburbs
  devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)

  devise_for :users
  resources :homes
  resources :citysuburbs

root to: 'homes#index'
end
