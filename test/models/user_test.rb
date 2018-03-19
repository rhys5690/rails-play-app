require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "email should not be valid" do
    user = User.new(email: 'notvalid')

    assert_not user.valid?
  end

  test "email should be valid" do
    user = User.new(email: "test@valid.com")

    assert user.valid?
  end
end
