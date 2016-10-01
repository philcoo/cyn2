require 'test_helper'

class ConversationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conversation_index_url
    assert_response :success
  end

  test "should get name:string" do
    get conversation_name:string_url
    assert_response :success
  end

  test "should get email:string" do
    get conversation_email:string_url
    assert_response :success
  end

  test "should get phone:string" do
    get conversation_phone:string_url
    assert_response :success
  end

end
