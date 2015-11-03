class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.float :amount
      t.string :location

      t.timestamps null: false
    end
  end
end
