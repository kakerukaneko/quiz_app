Rails.application.routes.draw do
  
  get "index" => "contents#index"
  
  get "signup" => "users#new"
  post "users/create" => "users#create"
  get "users/:id" => "users#show"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "login" => "users#login_form"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  
  get "/" => "home#top"
  get "about" => "home#about"
end
