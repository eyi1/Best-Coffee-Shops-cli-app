class Store
    
    attr_accessor :name, :address, :description, :url 

    @@all = []
    
    def self.new_from_index(element)
        self.new(
            element.css("h3").text,
            element.css("small").text,    
            element.css("div.spot-block__description p").text,
            "https://www.theinfatuation.com/#{element.css("a").attribute("href").text}"
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