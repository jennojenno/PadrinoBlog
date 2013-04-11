require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class CommentTest < Test::Unit::TestCase
	context "Comment Model" do
		setup do
			@post = Post.new(:title =>"Blogpost" :body => "Body of blog post" :author => "Jen")
			@tag = Tag.new(:name ="rubytag")
			@post_tag = PostTag.new(:post => @post, :tag => @tag)
			@post.post_tags << @post_tag 
			@post.save! 
		end 


		should 'construct new instance' do
      assert @post.respond_to?(:post_tags) #this is plural bc post.rb has many post_tags
      assert_equals 1, @post_tag 
  end
end
