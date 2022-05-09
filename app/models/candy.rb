class Candy < ActiveRecord::Base
    has_many :order_candies
    has_many :orders, through: :order_candies  

end