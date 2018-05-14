Rails.application.routes.draw do
  
  root 'home#top'
  get 'about', to: 'home#about'
  
  get "index", to: "contents#index"
  get "contents/answer", to: "contents#answer"
  get "contents/create", to: "contents#create"
  post "contents/created", to: "contents#created"
  get "contents/kekka", to: "contents#kekka"
  
  get "signup", to: "users#new"
  post "users/create", to: "users#create"
  get "users/:id", to: "users#show"
  post "login", to: "users#login"
  post "logout", to: "users#logout"
  get "login", to: "users#login_form"
  post "users/:id/update", to: "users#update"
  get "users/:id/edit", to: "users#edit"
end