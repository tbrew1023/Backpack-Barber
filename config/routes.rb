Rails.application.routes.draw do
  root 'main#tab1'

  get 'main/tab1'

  get 'main/tab2'

  get 'main/tab3'

  get 'home/index'

  get 'home/about'

  get 'home/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
