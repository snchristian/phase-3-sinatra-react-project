class OrderCandies < ActiveRecord::Migration[6.1]
  def change
    create_table :order_candies do |t|
      t.integer :quantity
      t.integer :candy_id
      t.integer :order_id
    end
  end
end
