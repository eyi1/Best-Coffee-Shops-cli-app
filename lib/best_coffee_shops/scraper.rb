require 'pry'
class Scraper
    
    def scrape_page
        Nokogiri::HTML(open("https://ny.eater.com/maps/best-cafe-coffee-shop-new-york-city-brooklyn-queens"))
    end

    def scrape_coffeeshop_index   
        scrape_page.css("section.c-mapstack__card")[2..30].map {|index| index}
    end
    
    def create_coffeeshop
        scrape_coffeeshop_index.each do |element| 
            Store.new_from_index(element)    
        end
    end

end