require 'test_helper'

class TipoEventosControllerTest < ActionController::TestCase
  setup do
    @tipo_evento = tipo_eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_evento" do
    assert_difference('TipoEvento.count') do
      post :create, tipo_evento: @tipo_evento.attributes
    end

    assert_redirected_to tipo_evento_path(assigns(:tipo_evento))
  end

  test "should show tipo_evento" do
    get :show, id: @tipo_evento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_evento.to_param
    assert_response :success
  end

  test "should update tipo_evento" do
    put :update, id: @tipo_evento.to_param, tipo_evento: @tipo_evento.attributes
    assert_redirected_to tipo_evento_path(assigns(:tipo_evento))
  end

  test "should destroy tipo_evento" do
    assert_difference('TipoEvento.count', -1) do
      delete :destroy, id: @tipo_evento.to_param
    end

    assert_redirected_to tipo_eventos_path
  end
end
