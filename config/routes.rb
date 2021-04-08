Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :before_exercises, only: [:new, :create, :edit, :update, :show] do
  end
end
