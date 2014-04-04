class MissionsController < ApplicationController

  def index
    @missions = Mission.all
    @astronauts = Astronaut.all
    redirect_to("/astronauts")
  end

  def show
    @mission = Mission.find(params[:id])
    render('missions/show.html.erb')
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

  def edit
    @mission = Mission.find(params[:id])
    render('missions/edit.html.erb')
  end

  def update
    @mission = Mission.find(params[:id])
    @mission.update(params[:mission])
    flash[:notice] = "Mission updated"
    redirect_to("/missions")
  end

  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy
    flash[:notice] = "Mission deleted"
    redirect_to("/astronauts")
  end

end
