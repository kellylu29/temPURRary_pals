Rails.application.routes.draw do
  resources :reservations
  devise_for :users, :controllers => { registrations: 'registrations' }

  devise_scope :user {
    get '/users/:id', to: "registrations#show", as: "user"
   }

  root to: "home#index"

  resources :pets
  
  # route to new reservation form
  get '/pets/:id/reserve/new', to: 'reservations#new'

  # route to reservation form submit
  post '/pets/:id/reserve/', to: 'reservations#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
