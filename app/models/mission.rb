class Mission < ActiveRecord::Base
  has_many :astronauts
  has_many :challenges
  has_many :roles, through: :astronauts
end
