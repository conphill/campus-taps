class Webadmin::BarsController < Webadmin::WebadminController
  def index
    @bars = Bar.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bars }
    end
  end

  def show
    @bar = Bar.find_by_permalink(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bar }
    end
  end
  
  def new
    @bar = Bar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bar }
    end
  end

  def edit
    @bar = Bar.find_by_permalink(params[:id])
  end
  
  def create
    @bar = Bar.new(params[:bar])

    respond_to do |format|
      if @bar.save
        format.html { redirect_to([:webadmin,@bar], :notice => 'Bar was successfully created.') }
        format.xml  { render :xml => @bar, :status => :created, :location => [:webadmin,@bar] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bar.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @bar = Bar.find_by_permalink(params[:id])

    respond_to do |format|
      if @bar.update_attributes(params[:bar])
        format.html { redirect_to([:webadmin,@bar], :notice => 'Bar was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bar.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @bar = Bar.find_by_permalink(params[:id])
    @bar.destroy

    respond_to do |format|
      format.html { redirect_to(webadmin_bars_url) }
      format.xml  { head :ok }
    end
  end
end
