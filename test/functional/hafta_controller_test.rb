require 'test_helper'

class HaftaControllerTest < ActionController::TestCase
  setup do
    @haftum = hafta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hafta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haftum" do
    assert_difference('Haftum.count') do
      post :create, haftum: { durum: @haftum.durum, tarih: @haftum.tarih }
    end

    assert_redirected_to haftum_path(assigns(:haftum))
  end

  test "should show haftum" do
    get :show, id: @haftum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @haftum
    assert_response :success
  end

  test "should update haftum" do
    put :update, id: @haftum, haftum: { durum: @haftum.durum, tarih: @haftum.tarih }
    assert_redirected_to haftum_path(assigns(:haftum))
  end

  test "should destroy haftum" do
    assert_difference('Haftum.count', -1) do
      delete :destroy, id: @haftum
    end

    assert_redirected_to hafta_path
  end
end
