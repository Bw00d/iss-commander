class Astronaut < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :role
end
