class LcommentsController < ApplicationController
  def create
    @lcomment = Lcomment.new
    @lcomment.content = params[:content]
    @lcomment.location_id= params[:location_id]
    @lcomment.user_email = current_user.email
    @lcomment.save
    
    redirect_to :back
  end

  def destroy
    destroy_lcomment = Lcomment.find(params[:lcomments_id])
    destroy_lcomment.destroy
    
    redirect_to :back
  end

  def edit
    @location = Location.find(params[:location_id])
    @edit_lcomment = Lcomment.find(params[:lcomments_id])
  end

  def update
    location = Location.find(params[:location_id])
    update_lcomment = Lcomment.find(params[:lcomments_id])
    update_lcomment.content = params[:lcomments_content]
    update_lcomment.save
    
    redirect_to "/home/location_detail/#{params[:location_id]}"
  end
end
