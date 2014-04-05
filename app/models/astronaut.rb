class Astronaut < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :role
  belongs_to :mission
end
