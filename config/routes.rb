Rails.application.routes.draw do
  root to: 'home#top'
  
  resources :users, only: %i[ index create new edit show update ] do
    collection do
      post 'login'
      post 'logout'
      get 'login_form'
    end
  end
  
  resources :quizzes, only: %i[ index new create ] do
    collection do
      get 'answer'
      get 'result'
    end
  end
end