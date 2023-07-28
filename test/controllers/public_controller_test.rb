require "test_helper"

class PublicControllerTest < ActionDispatch::IntegrationTest
  test 'any user gets root page' do
    get root_path
    assert_response :success
  end

  test 'any user gets cookies policy' do
    get cookie_policy_path
    assert_response :success
  end

  test 'any user gets faq page' do
    get faq_path
    assert_response :success
  end

  test 'any user gets terms of use' do
    get terms_of_use_path
    assert_response :success
  end

  test 'any user gets privacy policy' do
    get privacy_policy_path
    assert_response :success
  end

  test 'any user gets privacy policy for california' do
    get privacy_policy_california_path
    assert_response :success
  end
end
