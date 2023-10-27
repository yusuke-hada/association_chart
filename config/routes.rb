Rails.application.routes.draw do
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  root to: 'top#top'
  resources :users, only: %i(new create show edit update) do
    resources :graphics
  end
end