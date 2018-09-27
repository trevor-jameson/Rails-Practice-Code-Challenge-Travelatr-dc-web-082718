require 'test_helper'

class BloggerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get blogger_show_url
    assert_response :success
  end

  test "should get new" do
    get blogger_new_url
    assert_response :success
  end

  test "should get index" do
    get blogger_index_url
    assert_response :success
  end

  test "should get edit" do
    get blogger_edit_url
    assert_response :success
  end

end
