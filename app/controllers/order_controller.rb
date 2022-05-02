class OrdersController < ApplicationController
    get '/orders/:id' do 
        order=Order.find(params[:id])
        order.to_json(include: :candies)
    end
end