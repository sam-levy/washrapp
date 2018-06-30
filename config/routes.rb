Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#about'

  resources :cars
  end
end
