require 'pry'
class Store
    
    attr_accessor :name, :location, :description, :website
    
    @@all = []
    
    def self.new_from_index(element)    
        self.new(
            element.css("h2").text, #name
            element.css("div.c-mapstack__address").text, #location    
            element.css("div.c-entry-content p").text, #description
            element.css("a.p-button").attr("href").text #website/url     
            )     
    end

    def initialize(name, location, description, website)
        @name = name
        @location = location
        @description = description
        @website = website
        @@all << self
    end
    
    def self.all
        @@all[1..29]
    end


end
