Rails.application.routes.draw do
  get '/playgrounds/:id' => 'playgrounds#show'
  # resources playgrounds, only: :show
  root 'pages#index'
  get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
