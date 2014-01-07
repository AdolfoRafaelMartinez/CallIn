class T1sController < ApplicationController
  def search
  end
  def results
    @t1s = T1.find(:all, :conditions => ["id = ?", params[:id]])
  end
  def index
    @t1s = T1.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @t1s }
    end
  end
  def show
    @t1 = T1.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @t1 }
    end
  end

  # GET /t1s/new
  # GET /t1s/new.xml
  def new
    @t1 = T1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @t1 }
    end
  end

  # GET /t1s/1/edit
  def edit
    @t1 = T1.find(params[:id])
  end

  # POST /t1s
  # POST /t1s.xml
  def create
    @t1 = T1.new(params[:t1])

    respond_to do |format|
      if @t1.save
        flash[:notice] = 'T1 was successfully created.'
        format.html { redirect_to(@t1) }
        format.xml  { render :xml => @t1, :status => :created, :location => @t1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @t1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /t1s/1
  # PUT /t1s/1.xml
  def update
    @t1 = T1.find(params[:id])

    respond_to do |format|
      if @t1.update_attributes(params[:t1])
        flash[:notice] = 'T1 was successfully updated.'
        format.html { redirect_to(@t1) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @t1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /t1s/1
  # DELETE /t1s/1.xml
  def destroy
    @t1 = T1.find(params[:id])
    @t1.destroy

    respond_to do |format|
      format.html { redirect_to(t1s_url) }
      format.xml  { head :ok }
    end
  end
end
