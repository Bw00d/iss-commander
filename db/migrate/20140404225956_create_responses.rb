class CreateResponses < ActiveRecord::Migration
  def change
    add_column :challenges, :response, :string
    add_column :challenges, :success, :boolean
  end
end
