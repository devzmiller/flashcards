Rails.application.routes.draw do
  root "index#index"
  resources :cards, only: :show
end
