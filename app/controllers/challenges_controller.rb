class ChallengesController < ApplicationController

  def index
    @challenges = Challenge.all
    render('challenges/index.html.erb')
  end
end
