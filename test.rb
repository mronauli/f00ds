require "faraday"
require "pry"

response = Faraday.get("https://api.nal.usda.gov/fdc/v1/search?api_key=pcOa0RBBXKscGfU5JsueWTVpkqu06deTYBThi2aK")
require "pry"; binding.pry
