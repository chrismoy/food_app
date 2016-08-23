require 'yelp'

# Yelp.client.configure do |config|
#   config.consumer_key = 'XmKClpSgglz94id2y1GmsQ'
#   config.consumer_secret = 'S5BcdeGrfaHUgmC96ktfo7uBs5U'
#   config.token = 'I5J3Kgnu3D-Vc2ZZvGIhtyWHe75XR2D7'
#   config.token_secret = 'LpHdN38-Y9ImwWk4t-ONSiZrnlo'
# end

Yelp.client.configure do |config|
  config.consumer_key = Figaro.env.YELP_CONSUMER_KEY
  config.consumer_secret = Figaro.env.YELP_SECRET_KEY
  config.token = Figaro.env.YELP_TOKEN
  config.token_secret = Figaro.env.YELP_TOKEN_SECRET
end
