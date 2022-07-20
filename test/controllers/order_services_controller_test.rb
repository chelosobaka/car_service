require "test_helper"

class OrderServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_service = order_services(:one)
  end

  test "should get index" do
    get order_services_url
    assert_response :success
  end

  test "should get new" do
    get new_order_service_url
    assert_response :success
  end

  test "should create order_service" do
    assert_difference('OrderService.count') do
      post order_services_url, params: { order_service: {  } }
    end

    assert_redirected_to order_service_url(OrderService.last)
  end

  test "should show order_service" do
    get order_service_url(@order_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_service_url(@order_service)
    assert_response :success
  end

  test "should update order_service" do
    patch order_service_url(@order_service), params: { order_service: {  } }
    assert_redirected_to order_service_url(@order_service)
  end

  test "should destroy order_service" do
    assert_difference('OrderService.count', -1) do
      delete order_service_url(@order_service)
    end

    assert_redirected_to order_services_url
  end
end
