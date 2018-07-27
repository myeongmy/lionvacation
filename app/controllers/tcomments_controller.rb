class TcommentsController < ApplicationController
  def create
    @tcomment = Tcomment.new
    @tcomment.content = params[:content]
    @tcomment.thing_id = params[:thing_id]
    @tcomment.user_email = current_user.email
    @tcomment.save
    
    redirect_to :back
  end

  def destroy
    destroy_tcomment = Tcomment.find(params[:thing_id])
    destroy_tcomment.destroy
    
    redirect_to :back
  end

  def edit
    @thing = Thing.find(params[:thing_id])
    @edit_tcomment = Tcomment.find(params[:tcomments_id])
  end

  def update
    thing = Thing.find(params[:thing_id])
    update_tcomment = Tcomment.find(params[:tcomments_id])
    update_tcomment.content = params[:tcomments_content]
    update_tcomment.save
    
     redirect_to "/home/thing_detail/#{params[:thing_id]}"
  end
end
