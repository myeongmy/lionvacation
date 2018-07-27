class HomeController < ApplicationController
  before_action :authenticate_user!, except: [ :start]
  def index
    @posts = Post.all
  end

  def new_food
  end
  
  def new_location
  end
  
  def new_thing
  end

  def create_food
    
    @post = Food.new
    @post.title = params[:food_title]
    @post.content = params[:food_content]
    @post.image = params[:image]
    @post.user_id = current_user.id
    @post.email = current_user.email
    @post.save
    
    redirect_to '/home/show_eat'
    
  end
  
  def create_location
    @post = Location.new
    @post.title = params[:location_title]
    @post.content = params[:location_content]
    @post.image = params[:image]
    @post.user_id = current_user.id
    @post.email = current_user.email
    @post.save
    
    redirect_to '/home/show_go'

  end
  
  def create_thing
    @post = Thing.new
    @post.title = params[:thing_title]
    @post.content = params[:thing_content]
    @post.image = params[:image]
    @post.user_id = current_user.id
    @post.email = current_user.email
    @post.save
    
    redirect_to '/home/show_do'
  end
  
  def destroy_location
    post = Location.find(params[:location_id])
    authorize post, :update?
    post.destroy
    redirect_to '/home/show_go'
  end
  
  def edit_location
    @location = Location.find(params[:location_id])
    authorize @location, :update?
  end
  
  def update_location
    post = Location.find(params[:location_id])
    post.title = params[:location_title]
    post.content = params[:location_content]
    post.save
    
    redirect_to '/home/show_go'
  end
  
  def update_thing
    post = Thing.find(params[:thing_id])
    post.title = params[:thing_title]
    post.content = params[:thing_content]
    post.save
    
    redirect_to '/home/show_do'
  end
  
  def start
  end
  
  def show_eat
    @foods = Food.all
  end
  
  def food_detail
  @food = Food.find(params[:food_id])
    
  end
  
  def location_detail
    @location = Location.find(params[:location_id])
  end
  
  def thing_detail
    @thing = Thing.find(params[:thing_id])
  end
  
  def show_go
    @locations = Location.all
  end
  
  def show_do
     @things = Thing.all
  end

  def destroy_food
    food = Food.find(params[:food_id])
    authorize food,:update?
    food.destroy
    redirect_to '/home/show_eat'
  end
  
  def destroy_thing
    post = Thing.find(params[:thing_id])
    authorize post,:update?
    post.destroy
    redirect_to '/home/show_do'
  end
  
  def edit_food
    @food = Food.find(params[:food_id])
    authorize @food, :update?
  end
  
  def edit_thing
    @thing = Thing.find(params[:thing_id])
    authorize @thing,:update?
  end
    
  def update_food
    post =  Food.find(params[:food_id])
    post.title = params[:food_title]
    post.content = params[:food_content]
    post.save
    
    redirect_to '/home/show_eat'
  end
end