class Webadmin::BarsController < Webadmin::WebadminController
  # GET /bars
  # GET /bars.xml
  def index
    @bars = Bar.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bars }
    end
  end

  # GET /bars/1
  # GET /bars/1.xml
  def show
    @bar = Bar.find_by_permalink(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bar }
    end
  end
  
  # GET /bars/new
  # GET /bars/new.xml
  def new
    @bar = Bar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bar }
    end
  end

  # GET /bars/1/edit
  def edit
    @bar = Bar.find_by_permalink(params[:id])
  end
  
  # POST /bars
  # POST /bars.xml
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

  # PUT /bars/1
  # PUT /bars/1.xml
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
  
  # DELETE /bars/1
  # DELETE /bars/1.xml
  def destroy
    @bar = Bar.find_by_permalink(params[:id])
    @bar.destroy

    respond_to do |format|
      format.html { redirect_to(webadmin_bars_url) }
      format.xml  { head :ok }
    end
  end
end
