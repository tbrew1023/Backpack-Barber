require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get customers" do
    get reports_customers_url
    assert_response :success
  end

  test "should get products" do
    get reports_products_url
    assert_response :success
  end

  test "should get store_transactions" do
    get reports_store_transactions_url
    assert_response :success
  end

end
