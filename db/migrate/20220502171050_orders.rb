class Orders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :order_status
      t.string :address
      t.string :state
      t.string :zipcode
      t.integer :customer_id
      t.integer :credit_card_number
      t.string :card_holder_name
      t.integer :cvc
  end
end
