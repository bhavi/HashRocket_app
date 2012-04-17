class SkillsController < ApplicationController

  expose(:skills) {Skill.all}
  expose(:skill)
  expose(:candidate)

  def create
    if skill.save      
      flash[:notice] = "Skill added successfully"
      redirect_to skill
      else
      flash[:notice] = "Skill not created"
      render "new"
    end
  end

  def update
    if skill.update_attributes(params[:skill])
      redirect_to skill_path, :notice=> "Skill updated successfuly"
    else
      render "edit"
    end
    end

  def destroy
    skill.destroy
    flash[:notice] = "successfully destroyed skill"
    redirect_to skills_path
  end
end
