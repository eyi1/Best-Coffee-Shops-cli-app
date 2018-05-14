require 'pry'
class CLI

    def call
        Scraper.new.create_coffeeshop
        puts ""
        puts "Welcome to Top 29 Coffeeshops in NYC!"  
        puts ""
        start
    end

    def start
        puts "Please select a numbered list: 1-10, 11-20, 21-29"
        input = gets.strip.to_i
        print_list(input)
        
        puts ""
        puts "What coffeeshop would you like more information on? (Type a number)"
        user_input = gets.strip.to_i
        coffeeshop = Store.find(user_input)
        print_coffeeshop_info(coffeeshop)
    end

    def print_list(input)
        puts ""
        Store.all[input-1..input+8].each.with_index(input) do |coffeeshop, index|
        puts "#{index}. #{coffeeshop.name}"
        end
    end

    def print_coffeeshop_info(coffeeshop)
        puts ""
        puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        puts "Name:                 #{coffeeshop.name}"
        puts "Location/Contact:     #{coffeeshop.contact}"
        puts "Website:              #{coffeeshop.url}"
        puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        puts "Description:"         
        puts ""
        puts "#{coffeeshop.description}" 
        puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        
        puts ""
    end

end
