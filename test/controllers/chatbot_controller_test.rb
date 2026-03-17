require "test_helper"

class ChatbotController < ApplicationController
  def index
  end

  def ask
    @response = "Sample response"
    render :index
  end
end
