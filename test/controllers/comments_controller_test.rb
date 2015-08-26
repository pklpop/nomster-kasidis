require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
 
	 test "create" do
	 	user = FactoryGirl.create(:user)
	 	sign_in user

	 	place = FactoryGirl.create(:place)

	 	comment = FactoryGirl.create(:comment)
	 	
	 	assert_difference 'Comment.count' do
	 		post :create, :place_id => place.id, :comment => {
	 			:message => comment.message,
	 			:rating => comment.rating
	 			}
	 	end

		 assert_redirected_to place_path(place)

		 assert_equal 1, user.comments.count
		end

end


#assert_difference = This is just checking to make sure that the number of objects for whatever 
#type was specified has increased by 1. (It is an easy way to check to see that an object was added to the DB)