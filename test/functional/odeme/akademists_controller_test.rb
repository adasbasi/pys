require 'test_helper'

class Odeme::AkademistsControllerTest < ActionController::TestCase
  setup do
    @odeme_akademist = odeme_akademists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odeme_akademists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odeme_akademist" do
    assert_difference('Odeme::Akademist.count') do
      post :create, odeme_akademist: { ad: @odeme_akademist.ad, soyad: @odeme_akademist.soyad, unvan: @odeme_akademist.unvan }
    end

    assert_redirected_to odeme_akademist_path(assigns(:odeme_akademist))
  end

  test "should show odeme_akademist" do
    get :show, id: @odeme_akademist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @odeme_akademist
    assert_response :success
  end

  test "should update odeme_akademist" do
    put :update, id: @odeme_akademist, odeme_akademist: { ad: @odeme_akademist.ad, soyad: @odeme_akademist.soyad, unvan: @odeme_akademist.unvan }
    assert_redirected_to odeme_akademist_path(assigns(:odeme_akademist))
  end

  test "should destroy odeme_akademist" do
    assert_difference('Odeme::Akademist.count', -1) do
      delete :destroy, id: @odeme_akademist
    end

    assert_redirected_to odeme_akademists_path
  end
end
