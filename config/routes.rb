Rails.application.routes.draw do
  resources :patients
  mount_devise_token_auth_for 'User', at: 'auth'
  
  resources :managers
  resources :pacients
  resources :medics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
