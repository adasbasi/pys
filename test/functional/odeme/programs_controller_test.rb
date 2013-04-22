require 'test_helper'

class Odeme::ProgramsControllerTest < ActionController::TestCase
  setup do
    @odeme_program = odeme_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odeme_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odeme_program" do
    assert_difference('Odeme::Program.count') do
      post :create, odeme_program: { ad: @odeme_program.ad, donem: @odeme_program.donem, katsayi: @odeme_program.katsayi }
    end

    assert_redirected_to odeme_program_path(assigns(:odeme_program))
  end

  test "should show odeme_program" do
    get :show, id: @odeme_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @odeme_program
    assert_response :success
  end

  test "should update odeme_program" do
    put :update, id: @odeme_program, odeme_program: { ad: @odeme_program.ad, donem: @odeme_program.donem, katsayi: @odeme_program.katsayi }
    assert_redirected_to odeme_program_path(assigns(:odeme_program))
  end

  test "should destroy odeme_program" do
    assert_difference('Odeme::Program.count', -1) do
      delete :destroy, id: @odeme_program
    end

    assert_redirected_to odeme_programs_path
  end
end
