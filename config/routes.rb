Rails.application.routes.draw do


  get 'notifications/index'
  
  resources :orders 
# home page and about, contact page routes
  root 'home#index'
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/blog'
  get 'orders/contact'
  # order page
  get 'home/reserve'
  get 'home/firstcake'
  get 'home/secondcake'
  get 'home/thirdone'
  get 'home/fourthone'
  get 'home/fiveone'
  get 'home/sixone'
  get 'home/make'
  # next cake page routes
  get 'home/next'
  get 'home/next1'
  get 'home/next2'
  get 'home/next3'
  get 'home/next4'
  get 'home/next5'
  get 'home/next6'

  get 'home/testimonies'
 
  



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
