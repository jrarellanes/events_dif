require 'test_helper'

class AsistenciaControllerTest < ActionController::TestCase
  setup do
    @asistencium = asistencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asistencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asistencium" do
    assert_difference('Asistencium.count') do
      post :create, asistencium: @asistencium.attributes
    end

    assert_redirected_to asistencium_path(assigns(:asistencium))
  end

  test "should show asistencium" do
    get :show, id: @asistencium.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asistencium.to_param
    assert_response :success
  end

  test "should update asistencium" do
    put :update, id: @asistencium.to_param, asistencium: @asistencium.attributes
    assert_redirected_to asistencium_path(assigns(:asistencium))
  end

  test "should destroy asistencium" do
    assert_difference('Asistencium.count', -1) do
      delete :destroy, id: @asistencium.to_param
    end

    assert_redirected_to asistencia_path
  end
end
