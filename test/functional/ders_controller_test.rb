require 'test_helper'

class DersControllerTest < ActionController::TestCase
  setup do
    @der = ders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create der" do
    assert_difference('Der.count') do
      post :create, der: { ad: @der.ad, kredi: @der.kredi, sube: @der.sube }
    end

    assert_redirected_to der_path(assigns(:der))
  end

  test "should show der" do
    get :show, id: @der
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @der
    assert_response :success
  end

  test "should update der" do
    put :update, id: @der, der: { ad: @der.ad, kredi: @der.kredi, sube: @der.sube }
    assert_redirected_to der_path(assigns(:der))
  end

  test "should destroy der" do
    assert_difference('Der.count', -1) do
      delete :destroy, id: @der
    end

    assert_redirected_to ders_path
  end
end
