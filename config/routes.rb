Rails.application.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'

  delete 'logout', to: 'sessions#destroy', as: 'logout'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'reports/customers'

  get 'reports/products'

  get 'reports/store_transactions'

  get 'accounts/index'

  get 'product_colors/index'

  get 'product_sizes/index'

  get 'main/search'

  post 'main/search'

  resources :promotions
  resources :sessions
  resources :store_transactions
  resources :product_sizes
  resources :product_colors
  resources :product_types
  resources :products
  resources :appointments
  resources :transactions
  resources :reviews
  resources :images
  resources :barber_images
  resources :follows
  resources :customers
  resources :barbers
  resources :accounts

  root 'main#tab1'

  get 'main/tab1'

  get 'main/tab2'

  get 'main/tab3'

  get 'main/tab4'

  get 'main/help'

  get 'main/privacy'

  #get 'home/index'

  #get 'home/about'

  #get 'home/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
