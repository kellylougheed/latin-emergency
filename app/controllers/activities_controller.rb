class ActivitiesController < ApplicationController
  def index
    @activity = Activity.order("RANDOM()").first
  end

  def create
    @activity = Activity.create(activity_params)
    if @activity.invalid?
      flash[:error] = 'Please enter a valid exercise between 10 and 300 characters.'
    end
    redirect_to root_path
  end

  def about
  end

  private

  def activity_params
    params.require(:activity).permit(:exercise, :level)
  end
  
end