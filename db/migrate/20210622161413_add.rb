class Add < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_items, :completed_at, :datetime
  end
end
