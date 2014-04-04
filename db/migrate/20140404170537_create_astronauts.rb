class CreateAstronauts < ActiveRecord::Migration
  def change
    create_table :astronauts do |t|
      t.string :name
      t.string :nationality
      t.integer :role_id
      t.timestamps
    end
  end
end
