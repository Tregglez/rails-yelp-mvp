Rails.application.routes.draw do
  get 'restaurants', to: 'restaurant#index'

  get 'restaurants/new', to: 'restaurant#new'
  post 'restaurants', to: 'restaurant#create'

  get 'restaurants/:id', to: 'restaurant#show', as: :restaurant
end
