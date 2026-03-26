Rails.application.routes.draw do
  root "home#index"

  get "chatbot", to: "chatbot#index"

  resources :cases
end
