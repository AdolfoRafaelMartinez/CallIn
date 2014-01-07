class XactionsController < ApplicationController
  # GET /xactions
  # GET /xactions.xml
  def index
    @xactions = Xaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @xactions }
    end
  end

  # GET /xactions/1
  # GET /xactions/1.xml
  def show
    @xaction = Xaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @xaction }
    end
  end

  # GET /xactions/new
  # GET /xactions/new.xml
  def new
    @xaction = Xaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @xaction }
    end
  end

  # GET /xactions/1/edit
  def edit
    @xaction = Xaction.find(params[:id])
  end

  # POST /xactions
  # POST /xactions.xml
  def create
    @xaction = Xaction.new(params[:xaction])

    respond_to do |format|
      if @xaction.save
        flash[:notice] = 'Xaction was successfully created.'
        format.html { redirect_to(@xaction) }
        format.xml  { render :xml => @xaction, :status => :created, :location => @xaction }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @xaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /xactions/1
  # PUT /xactions/1.xml
  def update
    @xaction = Xaction.find(params[:id])

    respond_to do |format|
      if @xaction.update_attributes(params[:xaction])
        flash[:notice] = 'Xaction was successfully updated.'
        format.html { redirect_to(@xaction) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @xaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /xactions/1
  # DELETE /xactions/1.xml
  def destroy
    @xaction = Xaction.find(params[:id])
    @xaction.destroy

    respond_to do |format|
      format.html { redirect_to(xactions_url) }
      format.xml  { head :ok }
    end
  end
end
