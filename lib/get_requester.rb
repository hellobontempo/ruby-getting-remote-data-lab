# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

#initialize with a string of URL
    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
        #gets URL passed in on initialization
        #return body of the response
    end

    def parse_json
        # we use the JSON library to parse the API response into nicely formatted JSON
        JSON.parse(self.get_response_body)
    end 

 








end
