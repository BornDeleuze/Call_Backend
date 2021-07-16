require "test_helper"

class UserConversationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_conversation = user_conversations(:one)
  end

  test "should get index" do
    get user_conversations_url, as: :json
    assert_response :success
  end

  test "should create user_conversation" do
    assert_difference('UserConversation.count') do
      post user_conversations_url, params: { user_conversation: { conversation_id: @user_conversation.conversation_id, user_id: @user_conversation.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_conversation" do
    get user_conversation_url(@user_conversation), as: :json
    assert_response :success
  end

  test "should update user_conversation" do
    patch user_conversation_url(@user_conversation), params: { user_conversation: { conversation_id: @user_conversation.conversation_id, user_id: @user_conversation.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_conversation" do
    assert_difference('UserConversation.count', -1) do
      delete user_conversation_url(@user_conversation), as: :json
    end

    assert_response 204
  end
end
