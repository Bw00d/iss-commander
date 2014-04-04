class EditAstronauts < ActiveRecord::Migration
  def change
    add_column :astronauts, :mission_id, :integer
  end
end
