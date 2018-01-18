require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get tab1" do
    get main_tab1_url
    assert_response :success
  end

  test "should get tab2" do
    get main_tab2_url
    assert_response :success
  end

  test "should get tab3" do
    get main_tab3_url
    assert_response :success
  end

end
