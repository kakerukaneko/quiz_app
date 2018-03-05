Rails.application.routes.draw do
  
  get "index" => "contents#index"
  get "contents/list" => "contents#list"
  get "contents/answer" => "contents#answer"
  get "contents/create" => "contents#create"
  post "contents/created" => "contents#created"
  get "contents/kekka" => "contents#kekka"
  
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
