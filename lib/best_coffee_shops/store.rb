class Store
    
    attr_accessor :name, :address, :description, :url 

    @@all = []
    
    def self.new_from_index(coffeeshop_index)
        self.new(
            coffeeshop_index.css("h3").text,
            coffeeshop_index.css("small").text,    
            coffeeshop_index.css("div.spot-block__description-section p").text,
            "https://www.theinfatuation.com/#{coffeeshop_index.css("a").attribute("href").text}"
            )
    end

    def initialize(name, address, description, url)
        @name = name
        @address = address
        @description = description
        @url = url
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.find(user_input)
        @@all[user_input-1]
    end

end