Seven::Application.routes.draw do
  resources :challenges
  resources :dones
  devise_for :users

  root :to => "challenges#index"
end
