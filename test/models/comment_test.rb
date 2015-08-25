require 'test_helper'

class CommentTest < ActiveSupport::TestCase
	  test "covert encoded value to human readable value" do 
	  	test_rating = Comment.new(:rating => '1_star')
	  	expected = 'one star'
	  	actual = test_rating.humanized_rating
	  	assert_equal expected, actual 
	end
end