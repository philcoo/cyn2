Rails.application.routes.draw do
  

  resources :users
  get 'notifications/index'
  
  resources :orders 
 
  root 'home#index'
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/blog'
  get 'orders/contact'
  get 'home/reserve'
  get 'home/firstcake'
  get 'home/secondcake'
 get 'home/thirdone'
 get 'home/fourthone'
 get 'home/fiveone'
 get 'home/sixone'
 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
