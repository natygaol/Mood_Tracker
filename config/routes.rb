Rails.application.routes.draw do
  devise_for :users 
  root to: 'pages#home'
  
  resources :patients, only:  %i[new create show index]  
  resources :doctors, only:  %i[new create]  
  resources :before_exercises, only:  %i[new create]  
  resources :after_exercises, only:  %i[new create]  

end


