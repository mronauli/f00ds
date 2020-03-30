require "faraday"
require "json"

class FoodsController < ApplicationController
  def index
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/search?api_key=pcOa0RBBXKscGfU5JsueWTVpkqu06deTYBThi2aK\&generalSearchInput=sweet%potatoes")
    food = JSON.parse(response.body)
    @food_descs = food['foods'][0, 10].map do |food|
      food['description']
    end
  end
end
