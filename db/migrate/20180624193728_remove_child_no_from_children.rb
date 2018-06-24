class RemoveChildNoFromChildren < ActiveRecord::Migration[5.1]
  def change
    remove_column(:children, :emp_no) 
    remove_column(:children, :child_no)
  end
end
