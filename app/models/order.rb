class Order < ActiveRecord::Base
    belongs_to  :customer
    has_many    :order_candies
    has_many    :candies, through: :order_candies
end