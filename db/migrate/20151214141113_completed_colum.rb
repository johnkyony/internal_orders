class CompletedColum < ActiveRecord::Migration
  def change
    add_column :orders , :completed , :date
  end
end
