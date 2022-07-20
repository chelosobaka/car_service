require "application_system_test_case"

class OrderServicesTest < ApplicationSystemTestCase
  setup do
    @order_service = order_services(:one)
  end

  test "visiting the index" do
    visit order_services_url
    assert_selector "h1", text: "Order Services"
  end

  test "creating a Order service" do
    visit order_services_url
    click_on "New Order Service"

    click_on "Create Order service"

    assert_text "Order service was successfully created"
    click_on "Back"
  end

  test "updating a Order service" do
    visit order_services_url
    click_on "Edit", match: :first

    click_on "Update Order service"

    assert_text "Order service was successfully updated"
    click_on "Back"
  end

  test "destroying a Order service" do
    visit order_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order service was successfully destroyed"
  end
end
