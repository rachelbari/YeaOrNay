require 'test_helper'

class BillPoliticiansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill_politician = bill_politicians(:one)
  end

  test "should get index" do
    get bill_politicians_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_politician_url
    assert_response :success
  end

  test "should create bill_politician" do
    assert_difference('BillPolitician.count') do
      post bill_politicians_url, params: { bill_politician: { bill_id: @bill_politician.bill_id, nay: @bill_politician.nay, politican_id: @bill_politician.politican_id, yea: @bill_politician.yea } }
    end

    assert_redirected_to bill_politician_url(BillPolitician.last)
  end

  test "should show bill_politician" do
    get bill_politician_url(@bill_politician)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_politician_url(@bill_politician)
    assert_response :success
  end

  test "should update bill_politician" do
    patch bill_politician_url(@bill_politician), params: { bill_politician: { bill_id: @bill_politician.bill_id, nay: @bill_politician.nay, politican_id: @bill_politician.politican_id, yea: @bill_politician.yea } }
    assert_redirected_to bill_politician_url(@bill_politician)
  end

  test "should destroy bill_politician" do
    assert_difference('BillPolitician.count', -1) do
      delete bill_politician_url(@bill_politician)
    end

    assert_redirected_to bill_politicians_url
  end
end
