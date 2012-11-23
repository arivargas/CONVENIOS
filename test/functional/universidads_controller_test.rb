require 'test_helper'

class UniversidadsControllerTest < ActionController::TestCase
  setup do
    @universidad = universidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:universidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create universidad" do
    assert_difference('Universidad.count') do
      post :create, universidad: { latitud: @universidad.latitud, longitud: @universidad.longitud, nombre: @universidad.nombre }
    end

    assert_redirected_to universidad_path(assigns(:universidad))
  end

  test "should show universidad" do
    get :show, id: @universidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @universidad
    assert_response :success
  end

  test "should update universidad" do
    put :update, id: @universidad, universidad: { latitud: @universidad.latitud, longitud: @universidad.longitud, nombre: @universidad.nombre }
    assert_redirected_to universidad_path(assigns(:universidad))
  end

  test "should destroy universidad" do
    assert_difference('Universidad.count', -1) do
      delete :destroy, id: @universidad
    end

    assert_redirected_to universidads_path
  end
end
