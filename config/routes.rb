Rails.application.routes.draw do


  devise_for :employees
  devise_for :users
  
 #get "users/sign_out" => 'pages#index'
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'pages#index'

  # get 'userinfo' => 'pages#userinfo'

  delete 'userinfo' => 'pages#destroy'

  delete 'index' => 'pages#destroy'





 post 'index' => 'pages#create'
 
 mount Blazer::Engine, at: "blazer"

  get 'home' => 'pages#home'


  get 'corporate'  => 'pages#corporate'

  get 'residential'  => 'pages#residential'

  get 'submission' => 'quotes#submission'

  post 'submission' => 'quotes#create'
  
  
  get 'employee' => 'pages#employee'

  get 'submission' => 'pages#submission'
  
  
  get 'index' => 'pages#index'
  
  get 'users/index' => 'pages#index'
  
  get 'users/index' => 'pages#index'
  
  get 'employee' => 'pages#employee'
  
  get 'dashboard' => 'pages#dashboard'
  
  # Dropbox related routings
  get 'dropbox/auth' => 'dropbox#auth'
  get 'dropbox/auth_callback' => 'dropbox#auth_callback'
  
  get 'map' => 'gmap#gmap'
  
  get '/watson/watson' => 'watson#watson'
  
  get 'intervention' => 'intervention#intervention'
  
  
  get '/intervention/addresses' => 'intervention#addresses'
  get '/intervention/batteries' => 'intervention#batteries'
  get '/intervention/columns' => 'intervention#columns'
  get '/intervention/elevators' => 'intervention#elevators'
  get '/intervention/elevator_id' => 'intervention#elevator_id'
  get '/intervention/employee_id' => 'intervention#employee_id'
  get '/intervention/description' => 'intervention#description'
  
  post 'intervention' => 'intervention#create'
end
