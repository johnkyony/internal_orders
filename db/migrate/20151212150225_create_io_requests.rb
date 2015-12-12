class CreateIoRequests < ActiveRecord::Migration
  def change
    create_table :io_requests do |t|
      t.references :department, index: true, foreign_key: true
      t.references :type, index: true, foreign_key: true
      t.string :problem
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
