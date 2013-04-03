require 'test_helper'

class HocasControllerTest < ActionController::TestCase
  setup do
    @hoca = hocas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hocas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hoca" do
    assert_difference('Hoca.count') do
      post :create, hoca: { ad: @hoca.ad, soyad: @hoca.soyad, unvan: @hoca.unvan }
    end

    assert_redirected_to hoca_path(assigns(:hoca))
  end

  test "should show hoca" do
    get :show, id: @hoca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hoca
    assert_response :success
  end

  test "should update hoca" do
    put :update, id: @hoca, hoca: { ad: @hoca.ad, soyad: @hoca.soyad, unvan: @hoca.unvan }
    assert_redirected_to hoca_path(assigns(:hoca))
  end

  test "should destroy hoca" do
    assert_difference('Hoca.count', -1) do
      delete :destroy, id: @hoca
    end

    assert_redirected_to hocas_path
  end
end
