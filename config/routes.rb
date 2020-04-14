Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/homepage", to: "application#homepage"
  get('/users/login', { to: 'users#view_login' })
  post('/users/login', { to: 'users#handle_login' })
  
  resources :recipes
  resources :amounts
  resources :users
  resources :ingredients
  resources :reviews
  
 

  
end
