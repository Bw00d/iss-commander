class MissionsController < ApplicationController

  def index
    @missions = Mission.all
    @astronauts = Astronaut.all
    redirect_to("/astronauts")
  end

  def new
    @mission = Mission.new
    render('missions/new.html.erb')
  end

  def create
    @mission = Mission.create(params[:mission])
    flash[:notice] = "Mission created"
    redirect_to("/astronauts")
  end

end
