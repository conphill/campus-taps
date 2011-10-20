class RestaurantsController < ApplicationController
  def index
    @title = "Campus Taps | Restaurants"
    @restaurants = Restaurant.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @restaurants }
    end
  end

  def show
    @restaurant = Restaurant.find_by_permalink(params[:id])
    @title = "#{@restaurant.name} #{@restaurant.region.name}"
    @reviews = @restaurant.reviews

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @restaurant }
    end
  end

end
