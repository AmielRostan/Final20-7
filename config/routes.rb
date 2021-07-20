Rails.application.routes.draw do
  resources :cloth_transmissions
  resources :transmissions
  resources :cloths
  resources :people
  resources :brands
  resources :cloth_types
  devise_for :users
  resources :appointments
  resources :guards
  resources :workers
  resources :medical_centers
  resources :worker_types
  resources :medical_center_types
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'people#index'
end
