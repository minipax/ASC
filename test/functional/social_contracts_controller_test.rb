require 'test_helper'

class SocialContractsControllerTest < ActionController::TestCase
  setup do
    @social_contract = social_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_contract" do
    assert_difference('SocialContract.count') do
      post :create, social_contract: @social_contract.attributes
    end

    assert_redirected_to social_contract_path(assigns(:social_contract))
  end

  test "should show social_contract" do
    get :show, id: @social_contract.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @social_contract.to_param
    assert_response :success
  end

  test "should update social_contract" do
    put :update, id: @social_contract.to_param, social_contract: @social_contract.attributes
    assert_redirected_to social_contract_path(assigns(:social_contract))
  end

  test "should destroy social_contract" do
    assert_difference('SocialContract.count', -1) do
      delete :destroy, id: @social_contract.to_param
    end

    assert_redirected_to social_contracts_path
  end
end
