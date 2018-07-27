class FcommentsController < ApplicationController
  def create
    @fcomment = Fcomment.new
    @fcomment.content = params[:content]
    @fcomment.user_email = current_user.email
    @fcomment.food_id= params[:food_id]
    @fcomment.save
    
    redirect_to :back
  end

  def destroy
    destroy_fcomment = Fcomment.find(params[:fcomments_id])
    destroy_fcomment.destroy
    
    redirect_to :back
  end

  def edit
    @food = Food.find(params[:food_id])
    @edit_fcomment = Fcomment.find(params[:fcomments_id])
  end
  
  def update
    @food = Food.find(params[:food_id])
    update_fcomment = Fcomment.find(params[:fcomments_id])
    update_fcomment.content = params[:fcomments_content]
    update_fcomment.save
    
    redirect_to "/home/food_detail/#{params[:food_id]}"
    
  end
end
