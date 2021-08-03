class AddTitleIdToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :title_id, :integer
  end
end
