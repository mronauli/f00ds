require "faraday"
require "pry"

class FoodsController < ApplicationController
  def index
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/search?api_key=pcOa0RBBXKscGfU5JsueWTVpkqu06deTYBThi2aK\&generalSearchInput=sweet%20potatoes")
    food = JSON.parse(response.body)
    food[:foods]
    redirect_to foods_path
  end
end
