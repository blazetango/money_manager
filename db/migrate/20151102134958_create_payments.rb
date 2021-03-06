class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.belongs_to :user, index: true
      t.belongs_to :event, index: true
      t.string :status, default: "pending"
      
      t.timestamps null: false
    end
  end
end
