require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats

  def index
  end

  def show
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end
end

# #######################################
# First version of the FlatsController 👇
# require "open-uri"

# class FlatsController < ApplicationController
#   def index
#     # Store json url
#     url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
#     # Open the url and parse it content
#     @flats = JSON.parse(URI.open(url).read)
#   end

#   def show
#     # Store json url
#     url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
#     # Open the url and parse it content
#     @flats = JSON.parse(URI.open(url).read)
#     # Find the flat with the id contains in the url
#     @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
#   end
# end