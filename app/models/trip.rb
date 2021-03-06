require 'httparty'
require 'json'

class Trip

  include HTTParty
  format :json

  BASEURI = "http://travelisa.ksetyadi.com/index.php/api/"
  
  def self.SummaryGet(first, last)

    request = HTTParty.get BASEURI + 'travel_summary?start=' + first + '&end=' + last
    request = JSON.parse(request)

    return request["data"]
  end

  def self.SummaryDetailGet(trip_id)

  	request = HTTParty.get BASEURI + 'summary_details?trip_id=' + trip_id
    request = JSON.parse(request)

    return request["data"]

  end

  def self.PatternGet(first, last)

    request = HTTParty.get BASEURI + 'pattern?start=' + first + '&end=' + last
    request = JSON.parse(request)

    return request["data"]

  end

end