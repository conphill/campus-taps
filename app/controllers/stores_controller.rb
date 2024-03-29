class StoresController < ApplicationController
  # GET /stores
  # GET /stores.xml
  def index
    @title = "Campus Taps | Liquor Stores"
    @stores = Store.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stores }
    end
  end

  # GET /stores/1
  # GET /stores/1.xml
  def show
    @store = Store.find_by_permalink(params[:id])
    @title = "#{@store.name} #{@store.region.name}"
    @product = Product.new

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @store }
    end
  end

  # GET /stores/1/edit
  def edit
    @store = Store.find_by_permalink(params[:id])
  end

  # PUT /stores/1
  # PUT /stores/1.xml
  def update
    @store = Store.find_by_permalink(params[:id])

    respond_to do |format|
      if @store.update_attributes(params[:store])
        format.html { redirect_to(@store, :notice => 'Store was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @store.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/1
  # DELETE /stores/1.xml
  def destroy
    @store = Store.find_by_permalink(params[:id])
    @store.destroy

    respond_to do |format|
      format.html { redirect_to(stores_url) }
      format.xml  { head :ok }
    end
  end
end
