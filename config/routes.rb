Rails.application.routes.draw do
  devise_for :users
  root controller: :invoices, action: :index
end
