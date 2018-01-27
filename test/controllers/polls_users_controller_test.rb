require 'test_helper'

class PollsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @polls_user = polls_users(:one)
  end

  test "should get index" do
    get polls_users_url
    assert_response :success
  end

  test "should get new" do
    get new_polls_user_url
    assert_response :success
  end

  test "should create polls_user" do
    assert_difference('PollsUser.count') do
      post polls_users_url, params: { polls_user: { nay: @polls_user.nay, poll_id: @polls_user.poll_id, user_id: @polls_user.user_id, yea: @polls_user.yea } }
    end

    assert_redirected_to polls_user_url(PollsUser.last)
  end

  test "should show polls_user" do
    get polls_user_url(@polls_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_polls_user_url(@polls_user)
    assert_response :success
  end

  test "should update polls_user" do
    patch polls_user_url(@polls_user), params: { polls_user: { nay: @polls_user.nay, poll_id: @polls_user.poll_id, user_id: @polls_user.user_id, yea: @polls_user.yea } }
    assert_redirected_to polls_user_url(@polls_user)
  end

  test "should destroy polls_user" do
    assert_difference('PollsUser.count', -1) do
      delete polls_user_url(@polls_user)
    end

    assert_redirected_to polls_users_url
  end
end
