class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.string :message
      t.integer :number
      t.timestamps
    end
  end
end
