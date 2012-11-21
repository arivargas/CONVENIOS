require 'test_helper'

class TipoConveniosControllerTest < ActionController::TestCase
  setup do
    @tipo_convenio = tipo_convenios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_convenios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_convenio" do
    assert_difference('TipoConvenio.count') do
      post :create, tipo_convenio: { descripcion: @tipo_convenio.descripcion, nombre: @tipo_convenio.nombre }
    end

    assert_redirected_to tipo_convenio_path(assigns(:tipo_convenio))
  end

  test "should show tipo_convenio" do
    get :show, id: @tipo_convenio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_convenio
    assert_response :success
  end

  test "should update tipo_convenio" do
    put :update, id: @tipo_convenio, tipo_convenio: { descripcion: @tipo_convenio.descripcion, nombre: @tipo_convenio.nombre }
    assert_redirected_to tipo_convenio_path(assigns(:tipo_convenio))
  end

  test "should destroy tipo_convenio" do
    assert_difference('TipoConvenio.count', -1) do
      delete :destroy, id: @tipo_convenio
    end

    assert_redirected_to tipo_convenios_path
  end
end
