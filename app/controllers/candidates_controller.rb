class CandidatesController < ApplicationController


  expose(:candidates) do
    all_candidates = Candidate.order(:lastname).page(params[:page]).per(10)
    if params['status'] == 'rejected'
      all_candidates.rejected
    else
      all_candidates
    end
  end
  expose(:candidate)
  expose(:notes) {candidate.notes}
  expose(:note)
  expose(:skill)
  expose(:skills) {Skill.all}
  def create
   if candidate.save
     flash[:alert] = "Candidate was successfully created."
     redirect_to candidates_url
   else
     render "new"
   end
  end


  def update
    if candidate.update_attributes(params[:candidate])
      redirect_to candidate , :notice => "Candidate updated successfully"
    else
     render "edit"
    end
  end

end
