class CLI

    def main
        # welcome user
        # tell user you are about to retrieve real estate listings
        # invoke API or Scraper method to instantiate Listings
        # display Listings to user
        # ask user if they would like to:
            #1. get current Listings
            #2. exit program
    end

    def welcome
        puts "Welcome to NotZillow."
        puts "We are looking for your new home."
    end

    def getdata
        # API.new.tap { |api| api.fetch_json_data}
        API.new.create_listings
        # api = API.new
        # api.fetch_json_data
    end

    def display_listings
        Listing.all.each do |listing| 
            puts "Location: #{listing.location}" 
            puts "Status: #{listing.status}"
            puts "Price: #{listing.price}" 
            puts "Agent: #{listing.agent}"
        end
        # :location :status, :price, :agent
    end

end