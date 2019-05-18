Rails.application.routes.draw do

  get 'users/show'
  devise_for :user 
  root to: "tweets#index"
  resources :tweets,except:[:show]	
  resources :users, only:[:show]
end
