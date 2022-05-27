class AddLocationToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :location, :string
  end
end
