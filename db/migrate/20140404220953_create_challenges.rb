class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.text :message
      t.integer :number
      t.integer :mission_id
      t.timestamps
    end
  end
end
