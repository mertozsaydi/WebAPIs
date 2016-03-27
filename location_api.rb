# CS 342 Design Patterns
#Author: @mertozsaydi

#file: api.rb
require_relative "api"
require_relative "ip_api"

class LocationApi<Api

  def initialize(proxyip)
    @clientip=proxyip
    @clientlocation
  end

  def noconnection
    puts  "Location can't detected"
  end

  def Info()

    templocation = Net::HTTP.get(URI('http://ip-api.com/json/'+@clientip.Info))
    @clientlocation=JSON.parse(templocation)
    puts "Your location is: " + @clientlocation["city"]
    return @clientlocation["city"]

  rescue
    noconnection()
  end
end
