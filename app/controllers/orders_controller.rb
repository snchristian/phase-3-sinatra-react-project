class OrdersController < ApplicationController
    
    # get '/orders/:id' do 
    #     order=Order.find(params[:id])
    #     order.to_json(include: :candies)
    # end


    get'/orders/last' do 
        last_order=Order.last.full_order
        last_order.to_json()
    end

    # get '/orders/:id' do 
    #     full_order = Order.find(params[:id])
    #     full_order.to_json(:include =>{:order_candies =>{:include => :candy}})
    # end

end
