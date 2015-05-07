class InstagramAPI
	def initialize(tag)
		response = RestClient.get "https://api.instagram.com/v1/tags/#{tag}/media/recent?client_id=2efdf3b1eb284e4588d2ce7fad2c0f0c"
		@data = JSON.parse(response)
	end

	def first_image_url
		get_media.first["images"]["standard_resolution"]["url"]
	end

	def get_media
		@data['data']
	end
end
