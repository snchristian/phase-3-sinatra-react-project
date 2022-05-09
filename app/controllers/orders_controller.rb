class OrdersController < ApplicationController
    
    get '/orders/:id' do 
        order=Order.find(params[:id])
        order.to_json(include: :candies)
    end

    get '/orders/total/:id' do
        order= Order.find(params[:id]).candies.map(&:price).sum
        order.to_json
    end
    
    get'/orders' do 
        last_order=Order.last.full_Order
        last_order.to_json
    end

    post '/orders' do
        customer = Customer.find_or_create_by(params[:customer])
        order = customer.orders.create(params[:order])
        candy = order.order_candies.create(params[:candy])
        updatedI = Order.last.quantity1
        candy.to_json
        end

  
    delete '/orders/delete/:id' do
    last_order=Order.last
    remove_candy =last_order.candies.find(params[:id]).destroy
    remove_candy.to_json
end

    
end
