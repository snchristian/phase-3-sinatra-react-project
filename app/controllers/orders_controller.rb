class OrdersController < ApplicationController
    
    get '/orders/:id' do 
        order=Order.find(params[:id])
        order.to_json(include: :candies)
    end

    
    get'/order_last' do 
        last_order=Order.last.full_Order
        last_order.to_json()
    end

    post '/customers/orders/order_candies/' do
        customer = Customer.find_or_create_by(params[:customer])
        new_order = customer.orders.create(params[:order])
        new_candy = new_order.order_candies.create(params[:candy])
        updated_candy_inventory = Order.last.update_candies_inventory
        new_candy.to_json()
    end

    delete '/candies/:id/delete_order' do
        last_order=Order.last
        remove_candy =last_order.remove_order_candies_by_candy_id params[:id]
        remove_candy.to_json
    end

    get '/order/order_candies/candies/:id' do 
        fullOrder = Order.find(params[:id])
        fullOrder.to_json(:include =>{:order_candies =>{:include => :candy}})

    end

    
end
