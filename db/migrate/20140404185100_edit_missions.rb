class EditMissions < ActiveRecord::Migration
  def change
    change_column :missions, :message, :text
  end
end
