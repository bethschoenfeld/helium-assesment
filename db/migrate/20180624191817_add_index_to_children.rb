class AddIndexToChildren < ActiveRecord::Migration[5.1]
  def change
    add_index :children, :employee_id
  end
end
