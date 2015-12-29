class RemoveProblemName < ActiveRecord::Migration
  def change
    remove_column :types , :problem_name , :string
  end
end
