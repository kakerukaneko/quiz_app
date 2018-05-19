Rails.application.routes.draw do
  root to: 'home#top'
  
  resources :users, only: [:index, :create, :new, :edit, :show, :update] do
    collection do
      post 'login'
      post 'logout'
      get 'login_form'
    end
  end
  
  resource :contents, only: [:new, :create] do
    get 'index'
    get 'answer'
    get 'result'
  end
end