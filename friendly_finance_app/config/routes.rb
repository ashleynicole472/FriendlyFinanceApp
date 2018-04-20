Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'about', to: 'pages#about'

end
