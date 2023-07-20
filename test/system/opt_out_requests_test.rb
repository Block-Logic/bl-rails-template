require "application_system_test_case"

class OptOutRequestsTest < ApplicationSystemTestCase
  setup do
    @opt_out_request = opt_out_requests(:one)
  end

  test "visiting the index" do
    visit opt_out_requests_url
    assert_selector "h1", text: "Opt out requests"
  end

  test "should create opt out request" do
    visit opt_out_requests_url
    click_on "New opt out request"

    fill_in "City encrypted", with: @opt_out_request.city_encrypted
    fill_in "City encrypted iv", with: @opt_out_request.city_encrypted_iv
    fill_in "Meta data", with: @opt_out_request.meta_data
    fill_in "Name encrypted", with: @opt_out_request.name_encrypted
    fill_in "Name encrypted iv", with: @opt_out_request.name_encrypted_iv
    fill_in "Postal code encrypted", with: @opt_out_request.postal_code_encrypted
    fill_in "Postal code encrypted iv", with: @opt_out_request.postal_code_encrypted_iv
    fill_in "Request type", with: @opt_out_request.request_type
    fill_in "State encrypted", with: @opt_out_request.state_encrypted
    fill_in "State encrypted iv", with: @opt_out_request.state_encrypted_iv
    fill_in "Street address encrypted", with: @opt_out_request.street_address_encrypted
    fill_in "Street address encrypted iv", with: @opt_out_request.street_address_encrypted_iv
    click_on "Create Opt out request"

    assert_text "Opt out request was successfully created"
    click_on "Back"
  end

  test "should update Opt out request" do
    visit opt_out_request_url(@opt_out_request)
    click_on "Edit this opt out request", match: :first

    fill_in "City encrypted", with: @opt_out_request.city_encrypted
    fill_in "City encrypted iv", with: @opt_out_request.city_encrypted_iv
    fill_in "Meta data", with: @opt_out_request.meta_data
    fill_in "Name encrypted", with: @opt_out_request.name_encrypted
    fill_in "Name encrypted iv", with: @opt_out_request.name_encrypted_iv
    fill_in "Postal code encrypted", with: @opt_out_request.postal_code_encrypted
    fill_in "Postal code encrypted iv", with: @opt_out_request.postal_code_encrypted_iv
    fill_in "Request type", with: @opt_out_request.request_type
    fill_in "State encrypted", with: @opt_out_request.state_encrypted
    fill_in "State encrypted iv", with: @opt_out_request.state_encrypted_iv
    fill_in "Street address encrypted", with: @opt_out_request.street_address_encrypted
    fill_in "Street address encrypted iv", with: @opt_out_request.street_address_encrypted_iv
    click_on "Update Opt out request"

    assert_text "Opt out request was successfully updated"
    click_on "Back"
  end

  test "should destroy Opt out request" do
    visit opt_out_request_url(@opt_out_request)
    click_on "Destroy this opt out request", match: :first

    assert_text "Opt out request was successfully destroyed"
  end
end
