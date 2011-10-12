class ReviewsController < ApplicationController
  before_filter :find_reviewable
  
  # GET /reviews
  # GET /reviews.xml
  def index
    @reviewable = find_reviewable
    @reviews = @reviewable.reviews

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reviews }
    end
  end

  # GET /reviews/1
  # GET /reviews/1.xml
  def show
    @review = Review.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @review }
    end
  end

  # GET /reviews/new
  # GET /reviews/new.xml
  def new
    # @review = Review.new
    @reviewable = find_reviewable
    @review = @reviewable.review.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @review }
    end
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:id])
  end

  # POST /reviews
  # POST /reviews.xml
  def create
    @reviewable = find_reviewable
    @review = @reviewable.reviews.build(params[:review])
    @review.user_id = params[:user_id]

    if @review.save
      # redirect_to @reviewable.class.new
      redirect_to [@reviewable,@reviews]
    else
      render :action => 'new'
    end
  end

  # PUT /reviews/1
  # PUT /reviews/1.xml
  def update
    @review = Review.find(params[:id])

    respond_to do |format|
      if @review.update_attributes(params[:review])
        format.html { redirect_to(@review, :notice => 'Review was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.xml
  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
      format.html { redirect_to(reviews_url) }
      format.xml  { head :ok }
    end
  end
  
  private
    def find_reviewable
      klass = params[:reviewable_type].capitalize.constantize
      reviewable = klass.find(params[:reviewable_id])
    end
end
