class AnxietiesController < ApplicationController
  before_action :authenticate_user

  def index
    user = User.find_by(id: current_user.id)
    anxieties = user.anxieties.order(created_at: :desc)
    render json: anxieties
  end


  def show
    anxieties = Anxiety.find_by(id: params[:id])
    render json: anxieties  
  end

  def create
    anxiety = Anxiety.new(life_theme: params[:life_theme], intrusive_thought_or_feeling: params[intrusive_thought_or_feeling], obsessional_theme:params[obsessional_theme], opposite_thought:params[opposite_thought], opposite_action:params[opposite_action], timer:params[:timer], progress:params[:progress], user_id:current_user.id) 

  if Anxiety.save
    render json: anxiety, status: :created
  else
    render json: {errors: anxiety.errors.full_messages}, status: 422   
  end
  end

  # def update
  #   anxiety = anxiety.find_by(user: params[:id])

  #   life_theme: params[:life_theme] || anxiety.life_theme
  #   intrusive_thought_or_feeling: params[:intrusive_thought_or_feeling] || anxiety.intrusive_thought_or_feeling
  #   obsessional_theme: params[:obsessional_theme] || anxiety.obsessional_theme
  #   opposite_thought: params[:opposite_thought] || anxiety.opposite_thought
  #   opposite_action: params[:opposite_action] || anxiety.opposite_action
  #   timer: params[:timer] || timer.anxiety 
  #   progress: params[:progress] || anxiety.progress
  #   anxiety.user_id: current_user.id || anxiety.user_id
  # end


  # def destroy
  #   anxiety = Anxiety.find_by(id: params[:id])
    
  #   anxiety.delete
  #   render json: {message: "Anxiety destroyed!"}
  # end

end
