require_relative "../config/environment"
class Caricom::API

    def initialize
        @url = "https://restcountries.eu/rest/v2/regionalbloc/caricom"

    end

    def get_country
        uri = URI.parse(@url)
        response = Net::HTTP.get(uri)
        countries_data = JSON.parse(response)
        countries_data.each do |country|
        end
        Country.new(name: country["name"], capital: country["capital"], population: country["population"])
    end

end

Caricom::API.new.get_country