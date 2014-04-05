class ChallengesController < ApplicationController

  def show
    @challenge = Challenge.find(params[:id])
    render('challenges/show.html.erb')
  end

  def new
    @challenge = Challenge.new
    render('challenges/new.html.erb')
  end

  def create
    @challenge = Challenge.create(params[:challenge])
    flash[:notice] = "Challenge created"
    redirect_to("/astronauts")
  end

  def edit
    @challenge = Challenge.find(params[:id])
    render('challenges/edit.html.erb')
  end

  def update
    @challenge = Challenge.find(params[:id])
    @challenge.update(params[:challenge])
    flash[:notice] = "Challenge updated"
    redirect_to("/astronauts")
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy
    flash[:notice] = "challenge deleted"
    redirect_to("/astronauts")
  end
end
