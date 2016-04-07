require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user=User.new(name:"john",email:"sss@email.com")
	end

	test "shout be valid" do
		assert @user.valid?
	end

	test "name should be present" do
		@user.name="   "
		assert_not @user.valid?
	end

	test "email shoud be present" do
		@user.email=" "
		assert_not @user.valid?
	end

	test "name shoud not be too long " do
		@user.name="a" * 51
		assert_not @user.valid?
	end

	test "email shoud not be too long " do
		@user.email= "a" * 254 + "@email.com"
		assert_not @user.valid?
	end 

  # test "the truth" do
  #   assert true
  # end
end
