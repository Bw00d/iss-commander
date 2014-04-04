class CrewsController < ApplicationController

  def index
    @missions = Mission.all
    @astronauts = Astronaut.all
    render('crews/new.html.erb')
  end

  def create
    @astronauts = Astronaut.where(:id => params[:astronauts_id])
    @mission = Mission.find(params[:mission_id])
    @astronauts.each do |astronaut|
      astronaut.update(:mission_id => @mission.id)
    end
    render("")
  end

end
