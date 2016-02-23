Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['808385712599576'], ENV['4bbaa38578c7393244b6c05ef31d0940']
end