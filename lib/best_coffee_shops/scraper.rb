class BestCoffeeShops::Scraper
    def get_page
        Nokogiri::HTML(open("https://www.theinfatuation.com/new-york/guides/coffee-shops-nyc-for-doing-work"))
      end
end
