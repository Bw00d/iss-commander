class ResponsesController < ApplicationController

  def index
    @challenges = Challenge.where(mission_id: params[:mission_id])
    @mission = Mission.find(params[:mission_id])
    @astronauts = @mission.astronauts
    render("responses/play.html.erb")
  end

end
