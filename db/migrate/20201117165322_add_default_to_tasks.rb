class AddDefaultToTasks < ActiveRecord::Migration[6.0]
  def change
    change_column_null :tasks, :completed, false
  end
end
