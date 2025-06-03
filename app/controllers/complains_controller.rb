class ComplainsController < ApplicationController
  before_action :authenticate_user!

  def new
    @complaint = current_user.complaints.new
  end

  def create
    @complaint = current_user.complaints.new(complaint_params)
    if @complaint.save
      redirect_to @complaint, notice: 'Complaint submitted successfully!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @complaint = Complaint.find(params[:id])
    unless @complaint.user == current_user
      redirect_to root_path, alert: 'You are not authorized to view this complaint.'
    end
  end

  private

  def complaint_params
    params.require(:complaint).permit(:details, :image)
  end
end
