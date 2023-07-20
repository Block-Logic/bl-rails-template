require "test_helper"

class OptOutRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opt_out_request = opt_out_requests(:one)
  end

  test "should get index" do
    get opt_out_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_opt_out_request_url
    assert_response :success
  end

  test "should create opt_out_request" do
    assert_difference("OptOutRequest.count") do
      post opt_out_requests_url, params: { opt_out_request: { city_encrypted: @opt_out_request.city_encrypted, city_encrypted_iv: @opt_out_request.city_encrypted_iv, meta_data: @opt_out_request.meta_data, name_encrypted: @opt_out_request.name_encrypted, name_encrypted_iv: @opt_out_request.name_encrypted_iv, postal_code_encrypted: @opt_out_request.postal_code_encrypted, postal_code_encrypted_iv: @opt_out_request.postal_code_encrypted_iv, request_type: @opt_out_request.request_type, state_encrypted: @opt_out_request.state_encrypted, state_encrypted_iv: @opt_out_request.state_encrypted_iv, street_address_encrypted: @opt_out_request.street_address_encrypted, street_address_encrypted_iv: @opt_out_request.street_address_encrypted_iv } }
    end

    assert_redirected_to opt_out_request_url(OptOutRequest.last)
  end

  test "should show opt_out_request" do
    get opt_out_request_url(@opt_out_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_opt_out_request_url(@opt_out_request)
    assert_response :success
  end

  test "should update opt_out_request" do
    patch opt_out_request_url(@opt_out_request), params: { opt_out_request: { city_encrypted: @opt_out_request.city_encrypted, city_encrypted_iv: @opt_out_request.city_encrypted_iv, meta_data: @opt_out_request.meta_data, name_encrypted: @opt_out_request.name_encrypted, name_encrypted_iv: @opt_out_request.name_encrypted_iv, postal_code_encrypted: @opt_out_request.postal_code_encrypted, postal_code_encrypted_iv: @opt_out_request.postal_code_encrypted_iv, request_type: @opt_out_request.request_type, state_encrypted: @opt_out_request.state_encrypted, state_encrypted_iv: @opt_out_request.state_encrypted_iv, street_address_encrypted: @opt_out_request.street_address_encrypted, street_address_encrypted_iv: @opt_out_request.street_address_encrypted_iv } }
    assert_redirected_to opt_out_request_url(@opt_out_request)
  end

  test "should destroy opt_out_request" do
    assert_difference("OptOutRequest.count", -1) do
      delete opt_out_request_url(@opt_out_request)
    end

    assert_redirected_to opt_out_requests_url
  end
end
