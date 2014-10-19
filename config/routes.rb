Rails.application.routes.draw do

  get 'locations/index'
  get 'locations/search'
  get 'locations/results' => 'locations#results'
  root to: 'locations#index'

  # ActiveAdmin Routes
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
