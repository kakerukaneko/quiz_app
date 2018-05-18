Rails.application.routes.draw do
  resources :users do
    collection do
      post 'login'
      post 'logout'
      get 'login_form'
      post 'create'
    end
    member do
      post :update
    end
  end
  
  resource :contents do
    get 'index'
    get 'answer'
    get 'kekka'
  end
  
  root to: 'home#top'
end