Rails.application.routes.draw do
  devise_for :users 
  root to: 'pages#home'
   resources :user_info, only:  %i[index new create destroy]  do
   resources :before_exercise, only:  %i[new create show]  
   resources :after_exercise, only:  %i[new create show]  
  end

end

