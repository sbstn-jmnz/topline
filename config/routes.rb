Rails.application.routes.draw do
  resources :commissions
  resources :documents
  resources :deliveries
  resources :payments
  resources :pinumbers
  resources :deductions
  #get 'orders/index'
  resources :orders, only: :index
  resources :quotationdetails
  resources :products
  resources :quotations
  resources :handlers
  resources :supplieraccounts
  resources :selleraccounts
  root to: 'pages#index'
  resources :ports
  resources :categories
  resources :paymentterms
  resources :buyers
  resources :clients
  resources :brands
  resources :suppliers
  resources :sellers
  resources :alarms
  resources :seasons
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :colors
  resources :sizes


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
