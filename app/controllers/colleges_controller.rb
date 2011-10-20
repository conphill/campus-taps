class CollegesController < ApplicationController
  # GET /colleges
  # GET /colleges.xml
  def index
    @title = "Campus Taps | Colleges"
    @colleges = College.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @colleges }
    end
  end

  # GET /colleges/1
  # GET /colleges/1.xml
  def show
    @college = College.find_by_permalink(params[:id])
    @title = "Campus Taps | #{@college.name}"

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @college }
    end
  end

  # DELETE /colleges/1
  # DELETE /colleges/1.xml
  def destroy
    @college = College.find_by_permalink(params[:id])
    @college.destroy

    respond_to do |format|
      format.html { redirect_to(colleges_url) }
      format.xml  { head :ok }
    end
  end
end
