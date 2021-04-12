Rails.application.routes.draw do
  devise_for :users 
  root to: 'pages#home'
  
    resources :patient, only:  %i[new create show index]  
    resources :dcctor, only:  %i[new create]  
    resources :before_exercise, only:  %i[new create]  
    resources :after_exercise, only:  %i[new create]  

end

