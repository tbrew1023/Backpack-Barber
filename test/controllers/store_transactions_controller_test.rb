require 'test_helper'

class StoreTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_transaction = store_transactions(:one)
  end

  test "should get index" do
    get store_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_store_transaction_url
    assert_response :success
  end

  test "should create store_transaction" do
    assert_difference('StoreTransaction.count') do
      post store_transactions_url, params: { store_transaction: { charge: @store_transaction.charge, customerID_id: @store_transaction.customerID_id, dateTime: @store_transaction.dateTime, productID_id: @store_transaction.productID_id } }
    end

    assert_redirected_to store_transaction_url(StoreTransaction.last)
  end

  test "should show store_transaction" do
    get store_transaction_url(@store_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_transaction_url(@store_transaction)
    assert_response :success
  end

  test "should update store_transaction" do
    patch store_transaction_url(@store_transaction), params: { store_transaction: { charge: @store_transaction.charge, customerID_id: @store_transaction.customerID_id, dateTime: @store_transaction.dateTime, productID_id: @store_transaction.productID_id } }
    assert_redirected_to store_transaction_url(@store_transaction)
  end

  test "should destroy store_transaction" do
    assert_difference('StoreTransaction.count', -1) do
      delete store_transaction_url(@store_transaction)
    end

    assert_redirected_to store_transactions_url
  end
end
