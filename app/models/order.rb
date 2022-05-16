class Order < ActiveRecord::Base
    belongs_to  :customer
    has_many    :order_candies
    has_many    :candies, through: :order_candies

    def full_order
        self.order_candies.map do |candyItem|
            fullOrder={
                id:candyItem.candy.id,
                name:candyItem.candy.name,
                price: candyItem.candy.price,
                image: candyItem.candy.image,
                quantity:candyItem.quantity    
            }
        end
    end

    def update_candies_inventory
        order_candies.map do |order_candies|
        order_candies.update_candy_inventory
        end
    end

    def remove_order_candies_by_candy_id candy_id
        remove_candy = self.order_candies.find_by(candy_id: id)
        remove_candy.delete
    end

end