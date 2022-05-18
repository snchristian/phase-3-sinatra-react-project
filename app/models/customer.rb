class Customer < ActiveRecord::Base
    has_many  :orders

    def orderd_candies
        self.orders.map do |order|
            order.full_order
        end  
    end 
end