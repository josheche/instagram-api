class HomeController < ApplicationController
  def index
    access_token = "13217646.1677ed0.10ee17846cdc4d80bda23aec5e2c2569"
    tag = 'miamitech'

    @tag_result = RestClient.get "https://api.instagram.com/v1/tags/#{tag}/media/recent?access_token=#{access_token}"
    @tag_result = JSON.parse(@tag_result)
  end
end
