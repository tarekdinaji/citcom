require "test_helper"

class ComplainsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get complains_index_url
    assert_response :success
  end

  test "should get show" do
    get complains_show_url
    assert_response :success
  end

  test "should get new" do
    get complains_new_url
    assert_response :success
  end

  test "should get create" do
    get complains_create_url
    assert_response :success
  end

  test "should get edit" do
    get complains_edit_url
    assert_response :success
  end

  test "should get update" do
    get complains_update_url
    assert_response :success
  end

  test "should get destroy" do
    get complains_destroy_url
    assert_response :success
  end
end
