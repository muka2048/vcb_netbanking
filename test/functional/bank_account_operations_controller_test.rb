require 'test_helper'

class BankAccountOperationsControllerTest < ActionController::TestCase
  setup do
    @bank_account_operation = bank_account_operations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bank_account_operations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bank_account_operation" do
    assert_difference('BankAccountOperation.count') do
      post :create, bank_account_operation: @bank_account_operation.attributes
    end

    assert_redirected_to bank_account_operation_path(assigns(:bank_account_operation))
  end

  test "should show bank_account_operation" do
    get :show, id: @bank_account_operation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bank_account_operation.to_param
    assert_response :success
  end

  test "should update bank_account_operation" do
    put :update, id: @bank_account_operation.to_param, bank_account_operation: @bank_account_operation.attributes
    assert_redirected_to bank_account_operation_path(assigns(:bank_account_operation))
  end

  test "should destroy bank_account_operation" do
    assert_difference('BankAccountOperation.count', -1) do
      delete :destroy, id: @bank_account_operation.to_param
    end

    assert_redirected_to bank_account_operations_path
  end
end
