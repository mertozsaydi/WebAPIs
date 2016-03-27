# CS 342 Design Patterns
#Author: @mertozsaydi

#file: api.rb
require_relative "api"

class IpApi <Api

  def initialize()
    @clientip
  end

  def noconnection
    puts  "Ip can't detected"
  end

  def Info()
    ip = Net::HTTP.get(URI("https://api.ipify.org?format=json"))
    @clientip=JSON.parse(ip)
    puts "Your IP Address is: " + @clientip["ip"]
    return @clientip["ip"]

  rescue
    noconnection()
  end

end
