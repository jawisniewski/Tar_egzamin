require 'net/http'
# HttpNet
class HTTPNet
  attr_reader :data

  def initialize(uri)
    @uri = URI(uri)
    @data = Net::HTTP.get(@uri)
  end
end
