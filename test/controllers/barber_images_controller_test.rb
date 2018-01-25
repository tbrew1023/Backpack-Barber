require 'test_helper'

class BarberImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @barber_image = barber_images(:one)
  end

  test "should get index" do
    get barber_images_url
    assert_response :success
  end

  test "should get new" do
    get new_barber_image_url
    assert_response :success
  end

  test "should create barber_image" do
    assert_difference('BarberImage.count') do
      post barber_images_url, params: { barber_image: { customerID_id: @barber_image.customerID_id } }
    end

    assert_redirected_to barber_image_url(BarberImage.last)
  end

  test "should show barber_image" do
    get barber_image_url(@barber_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_barber_image_url(@barber_image)
    assert_response :success
  end

  test "should update barber_image" do
    patch barber_image_url(@barber_image), params: { barber_image: { customerID_id: @barber_image.customerID_id } }
    assert_redirected_to barber_image_url(@barber_image)
  end

  test "should destroy barber_image" do
    assert_difference('BarberImage.count', -1) do
      delete barber_image_url(@barber_image)
    end

    assert_redirected_to barber_images_url
  end
end
