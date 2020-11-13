Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'gardens/home', to: 'gardens#home'
  get 'dashboard/gardens', to: 'dashboard#garden'
  get 'dashboard/bookings', to: 'dashboard#booking'
  get 'dashboard/rentals', to: 'dashboard#rental'

  root to: "gardens#home"
  resources :gardens do
    resources :bookings, only: [:create]
  end
end
