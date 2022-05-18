class OrderCandiesController < ApplicationController

    get '/order_candies' do 
        order_candies= OrderCandy.all
        order_candies.to_json()
    end
    
    post '/order_candies' do
        customer = Customer.find_or_create_by(params[:customer])
        new_order = customer.orders.create(params[:order])
        new_candy = new_order.order_candies.create(params[:candy])
        updated_candy_inventory = Order.last.update_candies_inventory
        new_candy.to_json()
    end

    delete '/order_candies/candy/:id' do
        last_order=Order.last
        remove_candy =last_order.remove_order_candies_by_candy_id params[:id]
        remove_candy.to_json()
    end
   
end