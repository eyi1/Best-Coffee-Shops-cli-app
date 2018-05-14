require 'pry'
class Store
    
    attr_accessor :name
    
    @@all = []
    
    def self.new_from_index(element)
        self.new(
            element.css("h2").text #name           
        )        
    end

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all[1..29]
    end
    

end
# Pry.start
# puts "hello"