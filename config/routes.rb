Onesec::Application.routes.draw do

  get "cake_sprinkles/create"

  devise_for :users

  root to: 'home#index'
  resources :seconds
  resources :cakes
  resources :tokens,:only => [:create, :destroy]
  resources :mobile_seconds, :only => [:create]
  resources :mobile_cakes, :only => [:create]
  resources :sec_sprinkles, :only => [:create]
  resources :mobile_sec_sprinkles, :only => [:create]
  resources :cake_sprinkles, :only => [:create]
  resources :mobile_cake_spinkles, :only => [:create]

  get '/api/mobile_seconds', to: 'mobile_seconds#get_user_info'
  get '/api/mobile_cakes', to: 'mobile_cakes#get_user_info'
  post '/seconds/search', to: 'seconds#search'
  post '/cakes/search', to: 'cakes#search'

end
