Rails.application.routes.draw do
  root to: "tweets#index"
  devise_for :user
  
  resources :tweets
end
