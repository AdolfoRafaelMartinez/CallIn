class BilltimesController < ApplicationController
  # GET /billtimes
  # GET /billtimes.xml
  def index
    @billtimes = Billtime.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @billtimes }
    end
  end

  # GET /billtimes/1
  # GET /billtimes/1.xml
  def show
    @billtime = Billtime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @billtime }
    end
  end

  # GET /billtimes/new
  # GET /billtimes/new.xml
  def new
    @billtime = Billtime.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @billtime }
    end
  end

  # GET /billtimes/1/edit
  def edit
    @billtime = Billtime.find(params[:id])
  end

  # POST /billtimes
  # POST /billtimes.xml
  def create
    @billtime = Billtime.new(params[:billtime])

    respond_to do |format|
      if @billtime.save
        flash[:notice] = 'Billtime was successfully created.'
        format.html { redirect_to(@billtime) }
        format.xml  { render :xml => @billtime, :status => :created, :location => @billtime }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @billtime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /billtimes/1
  # PUT /billtimes/1.xml
  def update
    @billtime = Billtime.find(params[:id])

    respond_to do |format|
      if @billtime.update_attributes(params[:billtime])
        flash[:notice] = 'Billtime was successfully updated.'
        format.html { redirect_to(@billtime) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @billtime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /billtimes/1
  # DELETE /billtimes/1.xml
  def destroy
    @billtime = Billtime.find(params[:id])
    @billtime.destroy

    respond_to do |format|
      format.html { redirect_to(billtimes_url) }
      format.xml  { head :ok }
    end
  end
end
