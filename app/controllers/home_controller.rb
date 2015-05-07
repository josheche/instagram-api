class HomeController < ApplicationController
  def index
  end

  def show
    @response = RestClient.get "https://api.instagram.com/v1/tags/#{params[:tag]}/media/recent?client_id=2efdf3b1eb284e4588d2ce7fad2c0f0c"
    @tags = JSON.parse(@response)
  end

  # def miamitech
    # access_token = "13217646.1677ed0.10ee17846cdc4d80bda23aec5e2c2569"
    # tag = 'miamitech'

    # @miamitech_tag = RestClient.get "https://api.instagram.com/v1/tags/#{tag}/media/recent?access_token=#{access_token}"

  #   @miamitech_tag = RestClient.get "https://api.instagram.com/v1/tags/miamitech/media/recent?client_id=2efdf3b1eb284e4588d2ce7fad2c0f0c"
  #   @miamitech_tag = JSON.parse(@miamitech_tag)
  # end
  # def wyncode
  #   @wyncode_tag = RestClient.get "https://api.instagram.com/v1/tags/wyncode/media/recent?client_id=2efdf3b1eb284e4588d2ce7fad2c0f0c"
  #   @wyncode_tag = JSON.parse(@wyncode_tag)
  # end
  # def emerge15
  #   @emerge_tag = RestClient.get "https://api.instagram.com/v1/tags/emerge15/media/recent?client_id=2efdf3b1eb284e4588d2ce7fad2c0f0c"
  #   @emerge_tag = JSON.parse(@emerge_tag)
  # end
  def data
    @response = RestClient.get "https://api.instagram.com/v1/tags/#{params[:tag]}/media/recent?client_id=2efdf3b1eb284e4588d2ce7fad2c0f0c"
    @tags = JSON.parse(@response)
  end
end
