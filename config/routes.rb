Rails.application.routes.draw do

  resources :buildings, only: [:index, :show, :edit, :update]
  resources :companies, only: [:show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
