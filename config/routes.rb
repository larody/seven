Seven::Application.routes.draw do
  resources :challenges
  devise_for :users

  root :to => "challenges#index"
end
