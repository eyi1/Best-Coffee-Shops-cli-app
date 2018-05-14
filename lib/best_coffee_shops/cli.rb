require 'pry'
class CLI

    def call
        Scraper.new.create_coffeeshop
        puts ""
        puts "Welcome to Top 29 Coffeeshops in NYC!"  
        start
        binding.pry
    end

    def start
        puts ""
        print_list
        puts ""
        puts "What coffeeshop would you like more information on? (Type a number)"
        
        input = gets.strip.to_i
    end

    def print_list
        Store.all.each.with_index do |coffeeshop, index|
        puts "#{index + 1}. #{coffeeshop.name}"
        end
    end
end
