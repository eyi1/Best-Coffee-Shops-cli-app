require 'pry'
class CLI

    def call
        Scraper.new.create_coffeeshop
        puts ""
        puts "-------------------------------------"
        puts "Welcome to Top 29 Coffeeshops in NYC!"  
        puts "-------------------------------------"
        puts ""
        start
    end

    def start
        Store.all[0..14].each.with_index(1) do |coffeeshop, index| 
            puts "#{index}. #{coffeeshop.name}"
        end

        puts ""
        puts "Type next to see more"      
        input = gets.strip
        puts ""
            if input == "next"
                Store.all[15..29].each.with_index(16) do |coffeeshop, index|
                puts "#{index}. #{coffeeshop.name}"
                end
            end
        
        puts ""
        get_response

        puts ""
        ask
    end

    def ask
        puts "Would you like to see another coffeeshop?"
        user_input = gets.strip.downcase
        puts ""
            if user_input == "yes"
                start
            elsif user_input == "no"
                exit
            elsif user_input != "yes" || user_input != "no"
                puts ""
                puts "Please type yes or no"
                puts ""
                ask
            end
    end

    def get_response
        puts "What coffeeshop would you like more information on? (Type a number)"
        user_input = gets.strip.to_i
        coffeeshop = Store.find(user_input)
        print_coffeeshop_info(coffeeshop)
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

        # puts "Please choose what number coffeeshops you want to see: 1-10, 11-20, 21-29"
        # input = gets.strip.to_i
        # print_list(input)

        # Store.all[input-1..input+8].each.with_index(input) do |coffeeshop, index|
        # puts "#{index}. #{coffeeshop.name}"
        # end