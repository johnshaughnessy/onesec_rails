Onesec::Application.routes.draw do

  devise_for :users

  root to: 'seconds#index'
  resources :seconds
  resources :cakes
  resources :tokens,:only => [:create, :destroy]
  resources :mobile_seconds, :only => [:create]
  resources :mobile_cakes, :only => [:create]

  get '/api/mobile_seconds', to: 'mobile_seconds#get_user_info'
  get '/api/mobile_cakes', to: 'mobile_cakes#get_user_info'
end
