Rails.application.routes.draw do


  root 'main#tab1'

  get 'login', to: 'sessions#new', as: 'login'

  delete 'logout', to: 'sessions#destroy', as: 'logout'

  get 'main/filter'

  post 'main/filter'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'reports/customers'

  get 'reports/products'

  get 'reports/store_transactions'

  get 'accounts/index'

  get 'product_colors/index'

  get 'product_sizes/index'

  get 'store_products/index'

  get 'main/update_cart'

  post 'main/update_cart'

  get 'main/checkout'

  post 'main/checkout'

  get 'main/cart'

  get 'main/search'

  post 'main/search'

  post 'main/buy'

  resources :store_products
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
