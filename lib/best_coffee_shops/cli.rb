class CLI

attr_accessor :user_input

    def call
        Scraper.new.create_coffeeshops
        puts ""
        puts "-----------------------------------------------------------"
        puts "Welcome to:" 
        puts "The Best NYC Coffee Shops for Camping Out With Your Laptop!"  
        puts "-----------------------------------------------------------"
        puts ""
        start
    end

    def start
        Store.all[0..4].each.with_index(1) do |coffeeshop, index| 
            puts "#{index}. #{coffeeshop.name}"
        end
        
        puts ""
        puts "Type 'next' to see more or 'exit' to close the app."
        get_response
        ask
    end

    def get_response
        puts "Which coffeeshop would you like more information on?"
        @user_input = gets.strip
        
        if @user_input == "next"
            puts ""
            Store.all[5..-1].each.with_index(6) do |coffeeshop, index|
            puts "#{index}. #{coffeeshop.name}"
            end
            puts ""
            get_response
        elsif @user_input == 'exit'
            exit      
        elsif @user_input.match(/[a-zA-Z]/)
            if coffeeshop = Store.all.detect do |shop|
                @user_input.downcase == shop.name.downcase
                end
                print_coffeeshop_info(coffeeshop) 
            else 
                puts "Please give a valid response."
                puts ""
                start
            end
        elsif @user_input.to_i > Store.all.count || @user_input.to_i <= 0 
            puts "That is not a valid number."
            puts ""
            get_response        
        else
            coffeeshop = Store.find(@user_input.to_i)
            #@user_input.match(/[0-9]/) || @user_input.match(/[0-9]{2}/)
            print_coffeeshop_info(coffeeshop)
        end
    end

    def ask
        puts "Would you like to see another coffeeshop? (Type 'yes' to see the list again or 'exit' to close the app)"
        @user_input = gets.strip.downcase
        puts ""
            if @user_input == "yes"
                start
            elsif @user_input == "exit"
                exit
            elsif @user_input != "yes" || @user_input != "exit"
                puts ""
                puts "Please type yes or exit"
                puts ""  
                ask
            end
    end

    def print_coffeeshop_info(coffeeshop)
        puts ""
        puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        puts "Name:                  #{coffeeshop.name}"
        puts "Address:              #{coffeeshop.address}"
        puts "For more info:         #{coffeeshop.url}"
        puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        puts "Description:"         
        puts ""
        puts "#{coffeeshop.description}" 
        puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"   
        puts ""
    end

end