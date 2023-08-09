require "test_helper"

class UserTest < ActiveSupport::TestCase
  setup do
    @user_params = {
      username: 'test01',
      email: 'test@test.com',
      password: 'password'
    }
  end

  describe '.create' do
    test 'correctly creates user with username, email and password' do
      assert_difference('User.count') do
        create :user, @user_params
      end

      user = User.find_by(username: 'test01')
      assert_equal user.username, 'test01'
      refute_equal @user_params[:email], user.email_encrypted
      assert_equal user.email_hash, Digest::SHA256.hexdigest(@user_params[:email])
    end

    test 'does not create user with invalid username' do
      assert_raises(ActiveRecord::RecordInvalid) do
        @user_params[:username] = 'test'
        create :user, @user_params
      end

      assert_raises(ActiveRecord::RecordInvalid) do
        @user_params[:username] = 'test' * 14
        create :user, @user_params
      end
    end
  end

  describe '.search_by_email_hash' do
    test 'looks for user with encrypted email' do
      create :user, @user_params
  
      user = User.search_by_email_hash(@user_params[:email])
      assert_equal user.email, 'test@test.com'
    end
  end
end
