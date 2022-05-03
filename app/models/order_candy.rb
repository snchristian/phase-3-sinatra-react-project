class OrderCandy < ActiveRecord::Base
    belongs_to :order
    belongs_to :candy 

    def update_candy_Inventory
        candy.update(inventory: candy[:inventory]-self[:quantity])
    
    end

end
