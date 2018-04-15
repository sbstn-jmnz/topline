Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  resources :commissions
  resources :orders
  resources :variants
  resources :gastos
  resources :documents
  resources :deliveries
  resources :payments
  resources :pinumbers
  resources :deductions
  #get 'orders/index'
  resources :orders, only: :index
  resources :products
  resources :quotations do
    resources :quotationdetails
  end
  resources :handlers
  resources :supplieraccounts
  resources :selleraccounts
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
  

  resources :colors
  resources :sizes


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
