Rails.application.routes.draw do
  resources :home, :contents
  resources :users do
    collection do
      get 'new'
      post 'login'
      post 'logout'
      get 'login_form'
    end
    member do
      post :update
    end
  end
  root to: 'home#top'
  
  #get "signup", to: "users#new"
  #post "login", to: "users#login"
  #post "logout", to: "users#logout"
  #get "login", to: "users#login_form"
  #post "users/:id/update", to: "users#update"
  
  get "contents/answer", to: "contents#answer"
end