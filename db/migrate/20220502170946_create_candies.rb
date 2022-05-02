class CreateCandies < ActiveRecord::Migration[6.1]
  def change
    create_table :candies do |t|
      t.string :name
      t.float  :price
      t.integer :inventory
      t.string :image
      t.string :quantity
    end
  end
end
