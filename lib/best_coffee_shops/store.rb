require 'pry'
class Store
    
    attr_accessor :name, :contact, :description, :url 

    @@all = []
    
    def self.new_from_index(element)    
        self.new(
            element.css("h2").text,
            element.css("div.c-mapstack__address").text,    
            element.css("div.c-entry-content p").text,
            element.css("ul.c-mapstack__services li a").attr("href").text)
    end

    def initialize(name, contact, description, url)
        name = name.split(" ")
        @name = name[1..-1].join(" ")
        @contact = contact
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

