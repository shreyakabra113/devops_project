class ChatbotController < ApplicationController
  protect_from_forgery with: :null_session

  def index
  end

  def ask
    user_input = params[:message]

    if user_input.present?
      user_input = user_input.downcase

      if user_input.include?("property")
        reply = "Property disputes involve ownership and legal rights. Identify the property, the parties, and any existing agreements before choosing a remedy."
      elsif user_input.include?("divorce")
        reply = "Divorce ends a marriage through a court order. Typical steps: file a petition, serve the spouse, negotiate property/custody, then finalize the decree."
      elsif user_input.include?("contract")
        reply = "A contract is a legally binding agreement. Check offer, acceptance, consideration, capacity, and legality to assess validity."
      else
        reply = "I can answer basic legal questions on property, divorce, or contracts. For complex matters, consult a licensed attorney."
      end
    else
      reply = "Please enter a question."
    end

    render json: { reply: reply }
  end
end
