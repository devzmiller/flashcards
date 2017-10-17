Rails.application.routes.draw do
  root "index#index"
  resources :cards, only: :show do
    resources :guesses, only: :create
  end
  resources :users, only: [:new, :create]
end
