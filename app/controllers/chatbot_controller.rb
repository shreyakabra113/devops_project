class ChatbotController < ApplicationController
  protect_from_forgery with: :null_session

  def index
  end

  def ask
    user_input = params[:message]

    if user_input.present?
      user_input = user_input.downcase

      if user_input.include?("property")
        @response = "Property disputes involve ownership and legal rights."
      elsif user_input.include?("divorce")
        @response = "Divorce is the legal process of ending a marriage."
      elsif user_input.include?("contract")
        @response = "A contract is a legally binding agreement."
      else
        @response = "Sorry, I can only answer basic legal questions."
      end
    else
      @response = "Please enter a question."
    end

    render :index
  end
end