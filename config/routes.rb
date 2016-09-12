Rails.application.routes.draw do
  get 'home/index'
  get 'home/home'

  resources :orders
  resources :orders 
  get 'home/about'
  get 'home/index'
  get 'home/contact'
  get 'home/blog'
  get 'orders/contact'
 
 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
