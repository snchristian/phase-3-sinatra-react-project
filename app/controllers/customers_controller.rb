class CustomersController < ApplicationController
    get '/customers' do
        customers= Customer.all
        customers.to_json()
    end

    get '/customers/:id' do
        customer=Customer.find(params[:id])
        customer_candies= customer.orderd_candies
        customer_candies.to_json
    end

end