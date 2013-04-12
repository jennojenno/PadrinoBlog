PadrinoBlog::App.controllers :post do
  
  get :index do
    @posts = Post.all
    render 'post/index'
  end


  get :authorposts, :map => '/post/author/:name/' do
    @posts = Author.find_by_name(params[:name]).posts
    render '/post/author'
  end

  get :tagged, :map => '/post/tagged/:name' do 
    @posts = Tag.find_by_name(params[:name]).posts
    render '/post/tagged'
  end


  #so far this works with /posts/tagged/1 but 
  #NOT with /posts/tagged/ruby 

# questions
# how to search 
# how to add tags to post form on /admin? 

end
