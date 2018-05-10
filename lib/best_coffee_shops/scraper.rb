require 'pry'
class BestCoffeeShops::Scraper
    
    def scrape_page
        #webpage = Nokogiri::HTML(open("https://www.theinfatuation.com/new-york/guides/coffee-shops-nyc-for-doing-work"))
        #a.css("div.spot-block a h3").text = name 

        Nokogiri::HTML(open("https://ny.eater.com/maps/best-cafe-coffee-shop-new-york-city-brooklyn-queens"))
        #a.css("h2").text = name
        # or a.css("section.c-mapstack__card h2")

    end

    def scrape_coffeeshop_index
        self.scrape_page.css("section.c-mapstack__card h2")               
    end

end
