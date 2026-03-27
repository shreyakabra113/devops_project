Rails.application.routes.draw do
  root "home#index"

  get "chatbot", to: "chatbot#index"
  post "chatbot/ask", to: "chatbot#ask"

  resources :cases
end
