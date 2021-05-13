require 'test_helper'

class Public::SocialsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_socials_new_url
    assert_response :success
  end

  test "should get index" do
    get public_socials_index_url
    assert_response :success
  end

  test "should get edit" do
    get public_socials_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_socials_update_url
    assert_response :success
  end

  test "should get destroy" do
    get public_socials_destroy_url
    assert_response :success
  end

end
