Rails.application.routes.draw do
  devise_for :users
  resources :invoices, only: [:index, :new]
  root controller: :landing, action: :index
  resources :companies, only: [:index, :create, :show, :new]
end

