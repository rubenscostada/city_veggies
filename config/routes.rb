Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'gardens/home', to: 'gardens#home'
  root to: "gardens#home"
  resources :gardens
end
