# CS 342 Design Patterns
#Author: @mertozsaydi

require 'net/http'
require 'JSON'

class Api

  def Info()
    raise ("abstract")
  end

  def noconnection()
    raise ("abstract")
  end
end