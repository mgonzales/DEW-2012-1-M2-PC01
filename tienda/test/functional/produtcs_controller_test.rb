require 'test_helper'

class ProdutcsControllerTest < ActionController::TestCase
  setup do
    @produtc = produtcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produtcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produtc" do
    assert_difference('Produtc.count') do
      post :create, produtc: @produtc.attributes
    end

    assert_redirected_to produtc_path(assigns(:produtc))
  end

  test "should show produtc" do
    get :show, id: @produtc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produtc
    assert_response :success
  end

  test "should update produtc" do
    put :update, id: @produtc, produtc: @produtc.attributes
    assert_redirected_to produtc_path(assigns(:produtc))
  end

  test "should destroy produtc" do
    assert_difference('Produtc.count', -1) do
      delete :destroy, id: @produtc
    end

    assert_redirected_to produtcs_path
  end
end
