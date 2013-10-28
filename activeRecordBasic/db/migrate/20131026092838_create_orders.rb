class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :customer
      t.integer :number
      t.decimal :price
      
      t.timestamps
    end
  end
end
