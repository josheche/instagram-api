class InstagramController < ApplicationController
  def index
    @instagram = Instagram.user_recent_media("2efdf3b1eb284e4588d2ce7fad2c0f0c")
  end
end
