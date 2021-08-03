class AddLocationIdToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :location_id, :integer
  end
end
