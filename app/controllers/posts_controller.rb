class PostsController < ApplicationController
  # GET /posts
  # GET /posts.xml
  def index
    @title = "Campus Taps | Blog"
    @posts = Post.recent

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    @post = Post.find(params[:id])
    @title = @post.title

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end
  
end