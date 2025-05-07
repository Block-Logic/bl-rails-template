require 'test_helper'

class OptOutRequestsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = create(:user, :confirmed)
    @admin = create(:user, :admin, :confirmed)
    @opt_out_params = {
      opt_out_request: {
        name: 'John Doe',
        request_type: 'opt_out',
        street_address: '4845 Pearl East Cir Ste 118',
        city: 'Boulder',
        postal_code: '80301',
        state: 'CO'
      }
    }
    @opt_out_request = create :opt_out_request
  end

  describe 'not admin user' do
    test 'does not get index' do
      sign_in @user
      get opt_out_requests_path
      assert_response :redirect
    end

    test 'does not delete opt out request' do
      sign_in @user
      assert_no_difference('OptOutRequest.count') do
        delete opt_out_request_path @opt_out_request
      end
      assert_response :redirect
    end
  end

  describe 'admin' do
    test 'gets index' do
      sign_in @admin
      get opt_out_requests_path
      assert_response :success
    end

    test 'deletes opt out request' do
      sign_in @admin
      assert_difference('OptOutRequest.count', -1) do
        delete opt_out_request_path @opt_out_request
      end
      assert_response :redirect
    end
  end

  describe 'guest' do
    test 'does not get index' do
      get opt_out_requests_path
      assert_response :redirect
    end

    test 'does not delete opt out request' do
      assert_no_difference('OptOutRequest.count') do
        delete opt_out_request_path @opt_out_request
      end
      assert_response :redirect
    end

    test 'gets opt_out form' do
      get '/opt-out-requests/new'
      assert_response :success
    end

    test 'creates opt-out request with correct params' do
      assert_difference('OptOutRequest.count') do
        post '/opt-out-requests', params: @opt_out_params
      end
      assert_response :redirect
    end

    test 'does not create opt-out request with incorrect params' do
      @opt_out_params[:opt_out_request][:state] = ''
      assert_no_difference('OptOutRequest.count') do
        post '/opt-out-requests', params: @opt_out_params
        assert_response :unprocessable_entity
      end
    end
  end
end
