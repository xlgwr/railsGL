class AddMoreToProducts < ActiveRecord::Migration
  def change
    add_column :products, :type, :string
    add_column :products, :height, :integer
  end
end
