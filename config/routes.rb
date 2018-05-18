Rails.application.routes.draw do
  root to: 'home#top'
  
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
end