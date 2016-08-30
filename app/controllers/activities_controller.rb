class ActivitiesController < ApplicationController
  def index
    @activity = Activity.order("RANDOM()").first
  end

  def new
    @activity = Activity.new
  end

  def create
    Activity.create(activity_params)
    redirect_to root_path
  end

  private

  def activity_params
    params.require(:activity).permit(:exercise, :level)
  end
  
end