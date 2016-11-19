require 'test_helper'

class DeliveriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get deliveries_index_url
    assert_response :success
  end

  test "should get new" do
    get deliveries_new_url
    assert_response :success
  end

  test "should get edit" do
    get deliveries_edit_url
    assert_response :success
  end

  test "should get show" do
    get deliveries_show_url
    assert_response :success
  end

end
