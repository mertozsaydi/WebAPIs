# CS 342 Design Patterns
#Author: @mertozsaydi

#file: api.rb
#file: ip_api.rb
#file: location_api.rb
#file: local_wather_api.rb
require_relative "api"
require_relative "ip_api"
require_relative "local_weather_api"
require_relative "location_api"

#Decorator
foo=LocalWeatherApi.new(LocationApi.new(IpApi.new()))
foo.Info()
