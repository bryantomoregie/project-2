Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/homepage", to: "application#homepage"
  get "/about", to: "application#about"
  get('/users/login', { to: 'users#view_login' })
  post('/users/login', { to: 'users#handle_login' })
  get('/users/logout', {to: 'users#handle_logout' })
  get('/recipes/category', {to: 'recipes#category'})
  resources :recipes
  resources :amounts
  resources :users
  resources :ingredients
  resources :reviews
  
 

  
end
