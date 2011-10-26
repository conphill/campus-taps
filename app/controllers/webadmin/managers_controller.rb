class Webadmin::ManagersController < Webadmin::WebadminController

  def index
    @managers = Manager.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @managers }
    end
  end

  def show
    @manager = Manager.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @manager }
    end
  end

  def new
    @manager = Manager.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @manager }
    end
  end

  def edit
    @manager = Manager.find(params[:id])
  end

  def create
    @manager = Manager.new(params[:manager])

    respond_to do |format|
      if @manager.save
        format.html { redirect_to([:webadmin,@manager], :notice => 'Manager was successfully registered.') }
        format.xml  { render :xml => @manager, :status => :created, :location => [:webadmin,@manager] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @manager.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @manager = Manager.find(params[:id])

    respond_to do |format|
      if @manager.update_attributes(params[:manager])
        format.html { redirect_to([:webadmin,@manager], :notice => 'Manager was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @manager.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @manager = Manager.find(params[:id])
    @manager.destroy

    respond_to do |format|
      format.html { redirect_to(webadmin_managers_url) }
      format.xml  { head :ok }
    end
  end

end
