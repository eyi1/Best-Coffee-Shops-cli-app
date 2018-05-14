require 'pry'
class Scraper
    
    def scrape_page
        #webpage = Nokogiri::HTML(open("https://www.theinfatuation.com/new-york/guides/coffee-shops-nyc-for-doing-work"))
        #a.css("div.spot-block a h3").text = name 
        Nokogiri::HTML(open("https://ny.eater.com/maps/best-cafe-coffee-shop-new-york-city-brooklyn-queens"))
        # or a.css("section.c-mapstack__card h2")
    end

    def scrape_coffeeshop_index   
        index = scrape_page.css("section.c-mapstack__card")
    end
    
    def create_coffeeshop
        scrape_coffeeshop_index.each do |element| 
            Store.new_from_index(element)    
        end
    end

end

 
# a = element.css("h2").select do |title| 
#     if title.text[1] != "h" && title.text[1] !=  "e" 
#         title.text
#     end
# end

# a.map do |title| 
#      title.text 
# end  

# element.each do |card| 
#     card.css("h2").select do |title| 
#         if title.text[1] != "h" && title.text[1] !=  "e" 
#             title.text
#         end
#     end
# end

    
#     a.map do |title| 
#          title.text 
#     end  