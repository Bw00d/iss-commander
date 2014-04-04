class AstronautsController < ApplicationController

  def index
    @missions = Mission.all
    @astronauts = Astronaut.all
    @challenges = Challenge.all
    render('astronauts/index.html.erb')
  end

  def new
    @astronaut = Astronaut.new
    @roles = Role.all
    render('astronauts/new.html.erb')
  end

  def show
    @astronaut = Astronaut.find(params[:id])
    render('astronauts/show.html.erb')
  end

  def create
    @astronaut = Astronaut.create(params[:astronaut])
    flash[:notice] = "Astronaut created"
    redirect_to('/astronauts')
  end

  def edit
    @roles = Role.all
    @astronaut = Astronaut.find(params[:id])
    render('astronauts/edit.html.erb')
  end

  def update
    @astronaut = Astronaut.find(params[:id])
    @astronaut.update(params[:astronaut])
    flash[:notice] = "Astronaut updated"
    redirect_to("/astronauts")
  end

  def destroy
    @astronaut = Astronaut.find(params[:id])
    @astronaut.destroy
    flash[:notice] = "Astronaut deleted"
    redirect_to("/astronauts")
  end

end
