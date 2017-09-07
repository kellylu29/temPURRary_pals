Rails.application.routes.draw do
  resources :reservations
  devise_for :users, :controllers => { registrations: 'registrations' }

  devise_scope :user {
    get '/users/:id', to: "registrations#show", as: "user"
   }

  root to: "home#index"

  resources :pets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
