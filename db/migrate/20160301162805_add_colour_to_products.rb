class AddColourToProducts < ActiveRecord::Migration
  def change
    add_column :products, :colour, :string
  end
end
