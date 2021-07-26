ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests
  # in alphabetical order.
  # Add more helper methods to be used by all tests here...
  fixtures :all
  
  # テストユーザーとしてログインする
  def log_in_as(user)
    session[:user_id] = user.id
  end

  class ActionDispatch::IntegrationTest
    
    # テストユーザーとしてログインする
    def log_in_as(user, password: 'password')
      post login_path, params: { session: { email: user.email,
                          password: password } }
    end
  end
end
