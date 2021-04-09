Rails.application.routes.draw do
  devise_for :users 
  root to: 'pages#home'
  
    resources :user_info, only:  %i[index new create destroy]  
    resources :before_exercise, only:  %i[new create show]  
    resources :after_exercise, only:  %i[new create show]  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
