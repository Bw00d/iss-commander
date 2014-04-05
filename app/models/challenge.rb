class Challenge < ActiveRecord::Base
  belongs_to :mission
  has_many :astronauts, through: :mission
end
