# CS 342 Design Patterns
#Author: @mertozsaydi

#file: api.rb
require_relative "api"
require_relative "location_api"

class LocalWeatherApi<Api

  def initialize(proxylocation)
    @clientlocation=proxylocation
    @clientweather
  end

  def noconnection
    puts "No connection"
  end

  def Info()

    tempweather=  Net::HTTP.get(URI('http://api.openweathermap.org/data/2.5/weather?q='+@clientlocation.Info+'&units=imperial&appid=2de143494c0b295cca9337e1e96b00e0'))
    @clientweather=JSON.parse(tempweather)
    puts "Local tempreture: " + @clientweather["main"]["temp"].to_s
    puts "Minimum Local Tempreture: " + @clientweather["main"]["temp_min"].to_s
    puts "Maximum Local tempreture: " + @clientweather["main"]["temp_max"].to_s
    puts "Local weather: " + @clientweather["weather"][0]["main"].to_s
    return @clientweather["main"]["description"].to_s

  rescue
    noconnection()
  end

end