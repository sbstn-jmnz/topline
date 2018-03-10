Rails.application.routes.draw do
  resources :basic_categories
  resources :clients
  resources :suppliers
  resources :handlers
  resources :sellers
  resources :products
  resources :quotations
  resources :quotation_details


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
