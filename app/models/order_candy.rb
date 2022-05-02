class OrderCandy < ActiveRecord::Base
    belongs_to :order
    belongs_to :candy 

end
