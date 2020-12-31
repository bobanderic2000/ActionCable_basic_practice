Rails.application.routes.draw do
  resources :messages
  resources :rooms


  get '/playgrounds/:id' => 'playgrounds#show'
  # resources playgrounds, only: :show
  root 'pages#index'
  get 'pages/index'
end
