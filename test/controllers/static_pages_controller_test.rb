require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

	def setup
		@part_title="Ruby on Rails Tutorial Sample App"
	end
	
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title","Home | #{@part_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title","Help | #{@part_title}"
  end

  test "shout get about" do
  	get :about
  	assert_response :success
  	assert_select "title","About | #{@part_title}"
  end
end
