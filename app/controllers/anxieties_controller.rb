class AnxietiesController < ApplicationController
  before_action :authenticate_user

  def index
    user = User.find_by(id: current_user.id)
    anxieties = user.anxieties.order(created_at: :desc)
    render json: anxieties
  end


  def show
 user = User.find_by(id: current_user.id)
    anxieties = user.anxieties.find_by(id: params[:id])
    render json: anxieties  
  end


  def create
    anxiety = Anxiety.new(life_theme: params[:life_theme], intrusive_thought_or_feeling: params[:intrusive_thought_or_feeling], obsessional_theme:params[:obsessional_theme], opposite_thought:params[:opposite_thought], opposite_action:params[:opposite_action], timer:params[:timer], progress:params[:progress], user_id:current_user.id) 
    
   # happy/ sad paths
  if anxiety.save
    render json: anxiety, status: :created
  else
    render json: {errors: anxiety.errors.full_messages}, status: 422   
  end
  end

def update
anxiety = current_user.anxieties.find_by(id: params[:id])

life_theme = params[:life_theme] || anxiety.life_theme
intrusive_thought_or_feeling = params[:intrusive_thought_or_feeling] || anxiety.intrusive_thought_or_feeling
obsessional_theme = params[:obsessional_theme] || anxiety.obsessional_them

opposite_thought = params[:opposite_thought] || anxiety.opposite_thought
opposite_action = params[:opposite_action] || anxiety.opposite_action
timer = params[:timer] || anxiety.timer
progress = params[:progress] || anxiety.progress
anxiety.user_id = current_user.id || anxiety.user_id
end


  # MUST FIX DESTROY METHOD, CALLING OUT ':'
  # def destroy
  #   anxiety = Anxiety.find_by(id: params[:id])
    
  #   anxiety.delete
  #   render json: {message: "Anxiety destroyed!"}
  # end
end
