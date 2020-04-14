Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes
  resources :amounts
  resources :users
  resources :ingredients
  resources :reviews
  
  get "/homepage", to: "application#homepage"


  
end
