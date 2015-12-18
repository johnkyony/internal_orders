class AddFieldToType < ActiveRecord::Migration
  def change
    add_column :types , :name , :string
  end
end
