class Customers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone_number
      t.string :email   
    end
  end
end
