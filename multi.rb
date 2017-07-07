require 'httparty'
require 'json'
require 'byebug'


# This class represents a world traveller who knows what languages are spoken in each country
# around the world and can cobble together a sentence in most of them (but not very well)
class Multilinguist

  TRANSLTR_BASE_URL = "http://www.transltr.org/api/translate"
  COUNTRIES_BASE_URL = "https://restcountries.eu/rest/v2/name"
  #{name}?fullText=true
  #?text=The%20total%20is%2020485&to=ja&from=en


  # Initializes the multilinguist's @current_lang to 'en'
  #
  # @return [Multilinguist] A new instance of Multilinguist
  def initialize
    @current_lang = 'en'
  end

  # Uses the RestCountries API to look up one of the languages
  # spoken in a given country
  #
  # @param country_name [String] The full name of a country
  # @return [String] A 2 letter iso639_1 language code
  def language_in(country_name)
    params = {query: {fullText: 'true'}}
    response = HTTParty.get("#{COUNTRIES_BASE_URL}/#{country_name}", params)
    json_response = JSON.parse(response.body)
    json_response.first['languages'].first['iso639_1']
  end

  # Sets @current_lang to one of the languages spoken
  # in a given country
  #
  # @param country_name [String] The full name of a country
  # @return [String] The new value of @current_lang as a 2 letter iso639_1 code
  def travel_to(country_name)
    local_lang = language_in(country_name)
    @current_lang = local_lang
  end

  # (Roughly) translates msg into @current_lang using the Transltr API
  #
  # @param msg [String] A message to be translated
  # @return [String] A rough translation of msg
  def say_in_local_language(msg)
    params = {query: {text: msg, to: @current_lang, from: 'en'}}
    response = HTTParty.get(TRANSLTR_BASE_URL, params)
    json_response = JSON.parse(response.body)
    json_response['translationText']
  end
end

class MathGenius < Multilinguist

  def initialize
  end

  def list_of_number(array = [])
    sum = 0
    array.each {|n| sum += n}
    return sum
  end

end

kathleen = MathGenius.new
puts kathleen.list_of_number([6,6,6,6,6,6])
kathleen = Multilinguist.new
puts kathleen.travel_to("India")
puts kathleen.travel_to("Italy")

#Quote Collector
class QuoteCollector < Multilinguist
  attr_accessor :collection

def initialize
  @collection = []
end

  def collection_of_quotes(array)

    array.each do |quote|
      #byebug
      @collection << quote
      puts @collection


    end
  end

  def search_quote(quote)
    random_quote = @collection.sample
    puts random_quote
  end

end
sam = QuoteCollector.new
sam.collection_of_quotes(["Hello World", "Happily ever after", "God", "Know thyself"])
sam.search_quote("Hello World")
#am.collection_of_quotes(["once upon a time", "Happily ever after", "once upon a time", "Happily ever after"])
