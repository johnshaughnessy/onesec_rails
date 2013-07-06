Onesec::Application.routes.draw do

  devise_for :users

  root to: 'seconds#index'
  resources :seconds
  resources :tokens,:only => [:create, :destroy]
end
