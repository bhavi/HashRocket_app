class CandidatesController < ApplicationController


  expose(:candidates) {Candidate.order(:lastname).page(params[:page])}
  expose(:candidate)
  expose(:notes) {candidate.notes}
  expose(:note) 

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
