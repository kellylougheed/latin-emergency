class ActivitiesController < ApplicationController
  def index
    @activity = Activity.order("RANDOM()").first
  end

  def new
    @activity = Activity.new
  end
  
end
