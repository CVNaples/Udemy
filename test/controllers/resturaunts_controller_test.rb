require 'test_helper'

class ResturauntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resturaunt = resturaunts(:one)
  end

  test "should get index" do
    get resturaunts_url
    assert_response :success
  end

  test "should get new" do
    get new_resturaunt_url
    assert_response :success
  end

  test "should create resturaunt" do
    assert_difference('Resturaunt.count') do
      post resturaunts_url, params: { resturaunt: { address: @resturaunt.address, name: @resturaunt.name } }
    end

    assert_redirected_to resturaunt_url(Resturaunt.last)
  end

  test "should show resturaunt" do
    get resturaunt_url(@resturaunt)
    assert_response :success
  end

  test "should get edit" do
    get edit_resturaunt_url(@resturaunt)
    assert_response :success
  end

  test "should update resturaunt" do
    patch resturaunt_url(@resturaunt), params: { resturaunt: { address: @resturaunt.address, name: @resturaunt.name } }
    assert_redirected_to resturaunt_url(@resturaunt)
  end

  test "should destroy resturaunt" do
    assert_difference('Resturaunt.count', -1) do
      delete resturaunt_url(@resturaunt)
    end

    assert_redirected_to resturaunts_url
  end
end
