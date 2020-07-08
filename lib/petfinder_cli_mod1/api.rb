require 'json'

module PetfinderCliMod1

  class API
    API_HOST = "https://api.petfinder.com/v2/"

    def self.api_public_key 
      begin
        @@public = File.open(File.expand_path("~/.petfinder_public")).read.strip
      rescue 
        puts "No public key found. Please follow the instructions at https://www.petfinder.com/developers/ to get your keys."

        # create public key
        puts "Please enter your public key:"
        @@public = gets.strip 
        return if @@public == "exit"
        File.open(File.expand_path("~/.petfinder_public"), "w") do |file|
          file.print @@public
        end
      end
      @@public
    end

    def self.auth_token
      url = "#{API_HOST}/oauth2/token"
      query = {
        grant_type: 'client_credentials',
        client_id: @@public,
        client_secret: @@private
      }


      end
  end

end