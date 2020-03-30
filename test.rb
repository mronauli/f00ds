require "faraday"
require "pry"
require "json"

response = Faraday.get("https://api.nal.usda.gov/fdc/v1/search?api_key=pcOa0RBBXKscGfU5JsueWTVpkqu06deTYBThi2aK\&generalSearchInput=sweet%potatoes")
food = JSON.parse(response.body, symbolize: true)
require "pry"; binding.pry
food_desc = food['foods'][0, 10]
food_desc = food['foods'].map do |food|
  food['description']
end
