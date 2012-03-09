class NotesController < ApplicationController

  expose(:candidate)
  expose(:candidates) {Candidate.order(:lastname)}
  expose(:notes) {candidate.notes}
  expose(:note)  

  def create
   note= notes.create(params[:note])
    if note.save
      redirect_to candidate_path(candidate)
    else
      flash[:error]="notes  not created"
      redirect_to candidate_path(candidate)
    end
  end

  def destroy
    note.destroy
     redirect_to candidate_path(candidate)
  end

end


