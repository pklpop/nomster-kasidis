require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
 test "index" do 
 	FactoryGirl.create(:place)
 	get :index
 	assert_response :success
end


