class Webadmin::PostsController < Webadmin::WebadminController  
  before_filter :authenticate_admin!, :except => [:index, :show]
  
  def index
    @posts = Post.page(params[:page]).per(5).order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])
    @post.admin_id = current_admin.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to([:webadmin,@post], :notice => 'Post was successfully created.') }
        format.xml  { render :xml => @post, :status => :created, :location => [:webadmin,@post] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to([:webadmin,@post], :notice => 'Post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(webadmin_posts_url) }
      format.xml  { head :ok }
    end
  end

end
