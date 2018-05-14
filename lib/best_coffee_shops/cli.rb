class CLI

    def call
        Scraper.new.create_coffeeshop
        puts "Welcome to Top 29 Coffeeshops in NYC!"
    end

end
