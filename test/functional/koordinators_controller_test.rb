require 'test_helper'

class KoordinatorsControllerTest < ActionController::TestCase
  setup do
    @koordinator = koordinators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:koordinators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create koordinator" do
    assert_difference('Koordinator.count') do
      post :create, koordinator: { akademik: @koordinator.akademik, enstitu: @koordinator.enstitu, uzem: @koordinator.uzem }
    end

    assert_redirected_to koordinator_path(assigns(:koordinator))
  end

  test "should show koordinator" do
    get :show, id: @koordinator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @koordinator
    assert_response :success
  end

  test "should update koordinator" do
    put :update, id: @koordinator, koordinator: { akademik: @koordinator.akademik, enstitu: @koordinator.enstitu, uzem: @koordinator.uzem }
    assert_redirected_to koordinator_path(assigns(:koordinator))
  end

  test "should destroy koordinator" do
    assert_difference('Koordinator.count', -1) do
      delete :destroy, id: @koordinator
    end

    assert_redirected_to koordinators_path
  end
end
