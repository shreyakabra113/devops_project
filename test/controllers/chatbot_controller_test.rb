require "test_helper"

class ChatbotControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/chatbot"
    assert_response :success
  end
end
