require 'test_helper'

class BecasControllerTest < ActionController::TestCase
  setup do
    @beca = becas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:becas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beca" do
    assert_difference('Beca.count') do
      post :create, beca: { beneficios: @beca.beneficios, duracion: @beca.duracion, fch_limite: @beca.fch_limite, idioma: @beca.idioma, institucion: @beca.institucion, modalidad: @beca.modalidad, periodo: @beca.periodo, programa: @beca.programa, requisitos: @beca.requisitos, titulo: @beca.titulo }
    end

    assert_redirected_to beca_path(assigns(:beca))
  end

  test "should show beca" do
    get :show, id: @beca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beca
    assert_response :success
  end

  test "should update beca" do
    put :update, id: @beca, beca: { beneficios: @beca.beneficios, duracion: @beca.duracion, fch_limite: @beca.fch_limite, idioma: @beca.idioma, institucion: @beca.institucion, modalidad: @beca.modalidad, periodo: @beca.periodo, programa: @beca.programa, requisitos: @beca.requisitos, titulo: @beca.titulo }
    assert_redirected_to beca_path(assigns(:beca))
  end

  test "should destroy beca" do
    assert_difference('Beca.count', -1) do
      delete :destroy, id: @beca
    end

    assert_redirected_to becas_path
  end
end
