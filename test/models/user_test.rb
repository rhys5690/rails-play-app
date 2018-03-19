require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "email should not be valid" do
    user = User.new(email: 'notvalid',
                    password: '12345678',
                    password_confirmation: '12345678')

    assert_not user.valid?
  end

  test "email should be valid" do
    user = User.new(email: "test@valid.com",
                    password: '12345678',
                    password_confirmation: '12345678')

    assert user.valid?
  end

  test "user should have confirmation_token" do
    user = User.create(email: "blah@blah.com", password: '12345678',
                       password_confirmation: '12345678')

    assert_not_nil user.confirmation_token
  end
end
