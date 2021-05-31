Rails.application.routes.draw do
 
  get 'home/index'
  root to: "home#index"
  
  resources :activities
  resources :projects

end
