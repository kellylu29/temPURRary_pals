Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  devise_scope :user {
    get '/users/:id', to: "registrations#show", as: "user"
   }

  root to: "home#index"

  resources :pets

  get '/pets/:id/reserve/', to: 'reservations#index', as: "reservations"

  # route to new reservation form
  get '/pets/:id/reserve/new', to: 'reservations#new', as: "new_reservation"

  # route to reservation form submit
  post '/pets/:id/reserve/', to: 'reservations#create'

  get '/pets/reserve/:id', to: 'reservations#show', as: "reservation"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
