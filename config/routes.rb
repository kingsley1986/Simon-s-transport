Rails.application.routes.draw do
  resources :citysuburbs
  devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)

  devise_for :users
  resources :homes
  resources :citysuburbs

root to: 'homes#index'
end
