class AddTaskToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, default: false
  end
end
