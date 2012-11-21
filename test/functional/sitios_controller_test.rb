require 'test_helper'

class SitiosControllerTest < ActionController::TestCase
  setup do
    @sitio = sitios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sitios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sitio" do
    assert_difference('Sitio.count') do
      post :create, sitio: { enlace: @sitio.enlace, nombre: @sitio.nombre }
    end

    assert_redirected_to sitio_path(assigns(:sitio))
  end

  test "should show sitio" do
    get :show, id: @sitio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sitio
    assert_response :success
  end

  test "should update sitio" do
    put :update, id: @sitio, sitio: { enlace: @sitio.enlace, nombre: @sitio.nombre }
    assert_redirected_to sitio_path(assigns(:sitio))
  end

  test "should destroy sitio" do
    assert_difference('Sitio.count', -1) do
      delete :destroy, id: @sitio
    end

    assert_redirected_to sitios_path
  end
end
