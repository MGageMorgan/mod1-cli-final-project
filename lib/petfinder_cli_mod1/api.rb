require 'json'
require 'open-uri'
module PetfinderCliMod1

  class API
    API_HOST = "https://newsapi.org/v2/"
    TOP_HEADLINES = "top-headlines?"

    def self.api_public_key 
      begin
        @@public = File.open(File.expand_path("~/.newsfeed_key")).read.strip
      rescue 
        puts "No public key found. Please follow the instructions at https://newsapi.org to get your keys."

        # create public key
        puts "Please enter your public key:"
        @@public = gets.strip 
        return if @@public == "exit"
        File.open(File.expand_path("~/.newsfeed_key"), "w") do |file|
          file.print @@public
        end
      end
      @@public
    end

    def self.news_by_country(country)
      url = "http://newsapi.org/v2/top-headlines?country=#{country}&apiKey=#{@@public}"
      req = open(url)
      response_body = req.read
      puts response_body
    end
  end

end