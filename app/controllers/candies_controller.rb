class CandiesController < ApplicationController
    get '/candies' do
        candies = Candy.all
        candies.to_json
    end
end