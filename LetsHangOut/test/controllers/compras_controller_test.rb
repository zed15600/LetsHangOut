require 'test_helper'

class ComprasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get compras_index_url
    assert_response :success
  end

  test "should get show" do
    get compras_show_url
    assert_response :success
  end

  test "should get new" do
    get compras_new_url
    assert_response :success
  end

  test "should get edit" do
    get compras_edit_url
    assert_response :success
  end

  test "should get create" do
    get compras_create_url
    assert_response :success
  end

  test "should get update" do
    get compras_update_url
    assert_response :success
  end

  test "should get destroy" do
    get compras_destroy_url
    assert_response :success
  end

end
