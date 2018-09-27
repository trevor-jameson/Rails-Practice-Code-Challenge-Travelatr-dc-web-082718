require 'test_helper'

class DestinationControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get destination_show_url
    assert_response :success
  end

  test "should get new" do
    get destination_new_url
    assert_response :success
  end

  test "should get index" do
    get destination_index_url
    assert_response :success
  end

  test "should get edit" do
    get destination_edit_url
    assert_response :success
  end

end
