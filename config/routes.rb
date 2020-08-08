Rails.application.routes.draw do
  resources :users
  resources :addresses
  resources :pets
  resources :type_pets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
