require 'test_helper'

class BillsPoliticiansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bills_politician = bills_politicians(:one)
  end

  test "should get index" do
    get bills_politicians_url
    assert_response :success
  end

  test "should get new" do
    get new_bills_politician_url
    assert_response :success
  end

  test "should create bills_politician" do
    assert_difference('BillsPolitician.count') do
      post bills_politicians_url, params: { bills_politician: { bill_id: @bills_politician.bill_id, nay: @bills_politician.nay, politician_id: @bills_politician.politician_id, yea: @bills_politician.yea } }
    end

    assert_redirected_to bills_politician_url(BillsPolitician.last)
  end

  test "should show bills_politician" do
    get bills_politician_url(@bills_politician)
    assert_response :success
  end

  test "should get edit" do
    get edit_bills_politician_url(@bills_politician)
    assert_response :success
  end

  test "should update bills_politician" do
    patch bills_politician_url(@bills_politician), params: { bills_politician: { bill_id: @bills_politician.bill_id, nay: @bills_politician.nay, politician_id: @bills_politician.politician_id, yea: @bills_politician.yea } }
    assert_redirected_to bills_politician_url(@bills_politician)
  end

  test "should destroy bills_politician" do
    assert_difference('BillsPolitician.count', -1) do
      delete bills_politician_url(@bills_politician)
    end

    assert_redirected_to bills_politicians_url
  end
end
