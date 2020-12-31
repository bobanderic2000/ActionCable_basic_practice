Rails.application.routes.draw do
  resources :messages
  resources :rooms
  root 'rooms#index'

  get '/playgrounds/:id' => 'playgrounds#show'
  # resources playgrounds, only: :show
  get 'pages/index'
end
