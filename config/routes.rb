Rails.application.routes.draw do

  resources :cases

  get "chatbot", to: "chatbot#index"
  get "chatbot/ask", to: "chatbot#ask"

end