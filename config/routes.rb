Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :user_infos, only: [:new, :create, :show, :index] do
    resources :before_exercises, only: [:new, :create, :show, :index] do
    end
  end
end

