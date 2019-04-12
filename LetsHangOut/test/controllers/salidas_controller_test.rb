require 'test_helper'

class SalidasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get salidas_index_url
    assert_response :success
  end

  test "should get show" do
    get salidas_show_url
    assert_response :success
  end

  test "should get new" do
    get salidas_new_url
    assert_response :success
  end

  test "should get edit" do
    get salidas_edit_url
    assert_response :success
  end

  test "should get create" do
    get salidas_create_url
    assert_response :success
  end

  test "should get update" do
    get salidas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get salidas_destroy_url
    assert_response :success
  end

end
