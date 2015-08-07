require 'test_helper'

class IphonesControllerTest < ActionController::TestCase
  setup do
    @iphone = iphones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iphones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iphone" do
    assert_difference('Iphone.count') do
      post :create, iphone: { GBs: @iphone.GBs, Memory: @iphone.Memory, availability: @iphone.availability, condition: @iphone.condition, model: @iphone.model, price: @iphone.price }
    end

    assert_redirected_to iphone_path(assigns(:iphone))
  end

  test "should show iphone" do
    get :show, id: @iphone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iphone
    assert_response :success
  end

  test "should update iphone" do
    patch :update, id: @iphone, iphone: { GBs: @iphone.GBs, Memory: @iphone.Memory, availability: @iphone.availability, condition: @iphone.condition, model: @iphone.model, price: @iphone.price }
    assert_redirected_to iphone_path(assigns(:iphone))
  end

  test "should destroy iphone" do
    assert_difference('Iphone.count', -1) do
      delete :destroy, id: @iphone
    end

    assert_redirected_to iphones_path
  end
end
