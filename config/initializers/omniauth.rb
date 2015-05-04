Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :instagram, '2efdf3b1eb284e4588d2ce7fad2c0f0c', 'f955cb4445c8439796f6dbce16601bf7'
end
