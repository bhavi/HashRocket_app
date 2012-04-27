class SkillsController < ApplicationController
  
  def index
    @skills = Skill.find(:all)
      respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skills }
      end
  end
   
  def new
    @skill = Skill.new(params[:skill])
      respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @skill }
      end
  end
  
  def create
    @skill = Skill.new(params[:skill])
    respond_to do |format|
      if @skill.save  
        format.html { redirect_to(skills_path, :notice => 'Skill was successfully created.') }
        format.xml  { render :xml => @skill, :status => :created, :location => @skill }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @skill.errors, :status => :unprocessable_entity }
      end    
    end
  end

  def show
     @skill = Skill.find(params[:id])
     respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @skill }
    end
  end

  def edit
     @skill = Skill.find(params[:id])
  end

  def update
   @skill = Skill.find(params[:id])
    respond_to do |format|
      if @skill.update_attributes(params[:skill])
        format.html { redirect_to(skills_path, :notice => 'Skill was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to(skills_path) }
      format.xml  { head :ok }
    end
  end

end
