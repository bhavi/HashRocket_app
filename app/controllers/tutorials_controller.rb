class TutorialsController < ApplicationController
before_filter :authenticate_user! , :only =>:index


  def index
      @tutorials = Tutorial.order(:created_at)
       respond_to do |format|
         format.html # index.html.erb
         format.xml  { render :xml => @tutorials }
      end
  end

  def new
     @tutorial = Tutorial.new(params[:tutorial])
      respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tutorial }
      end
  end

  def create
    @tutorial = Tutorial.new(params[:tutorial])
    respond_to do |format|
      if @tutorial.save  
        format.html { redirect_to(tutorials_path, :notice => 'Tutorial was successfully created.') }
        format.xml  { render :xml => @tutorial, :status => :created, :location => @tutorial }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tutorial.errors, :status => :unprocessable_entity }
      end
    end
  end

  def show
     @tutorial = Tutorial.find(params[:id])
     respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tutorial }
    end
  end

  def edit
     @tutorial = Tutorial.find(params[:id])
  end

  def update
   @tutorial = Tutorial.find(params[:id])
    respond_to do |format|
      if @tutorial.update_attributes(params[:tutorial])
        format.html { redirect_to(tutorials_path, :notice => 'Tutorial was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tutorial.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @tutorial = Tutorial.find(params[:id])
    @tutorial.destroy
    respond_to do |format|
      format.html { redirect_to(tutorials_path) }
      format.xml  { head :ok }
    end
  end
end
