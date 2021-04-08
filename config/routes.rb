Rails.application.routes.draw do
  devise_for :users do
    resources :before_exercises, only: [:new, :create, :show, :index]
  end
  root to: 'pages#home'
end


