class ActivitiesController < ApplicationController
  def index
    @activity = Activity.order("RANDOM()").first
  end
end
