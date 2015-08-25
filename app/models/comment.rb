class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
	after_create :send_comment_email

	RATINGS = {
	'one star' => '1_star',
	'two stars' => '2_stars',
	'three stars' => '3_stars',
	'four stars' => '4_stars',
	'five stars' => '5_stars'
	}

	def humanized_rating
		RATINGS.invert[self.rating]
	end

	def send_comment_email
    	NotificationMailer.comment_added(self).deliver
  	end

end



# # it should create a comment
# test "should create a comment object" do

# # when i do Comment.new
# comment = Comment.new
# # 	comment should be initialize in the Comment class
# # 	and the comment is store as a blank object
# assert(comment.is_a?(Comment))
# end


# #it should store the value as an instance variable
# test "should store the value as an instance variable" do

# comment = Comment.new("hello world!")
# expected = "hello world!"
# actual = comment.comment
# assert_equal expected, actual

# end

# # when i do @comment
# # 	comment should be store in @comment as an instance variable


# tet :





# class Comment
# 	attr_accessor :comment
# 	def initialize(comment)
# 		@comment = comment
# 	end
# end
# #comment = Comment.new
