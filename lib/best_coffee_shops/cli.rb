class CLI

    def call
        Scraper.new.create_coffeeshop
        puts ""
        puts "--------------------------------------------"
        puts "Welcome to:" 
        puts "The Best Coffeeshops for Getting Work Done!"  
        puts "--------------------------------------------"
        puts ""
        start
    end

    def start
        Store.all[0..4].each.with_index(1) do |coffeeshop, index| 
            puts "#{index}. #{coffeeshop.name}"
        end

        puts ""
        puts "Type next to see more"      
        input = gets.strip
        puts ""
            if input == "next"
                Store.all[5..-1].each.with_index(6) do |coffeeshop, index|
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
        puts "Address:             #{coffeeshop.address}"
        puts "Review:               #{coffeeshop.url}"
        puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        puts "Description:"         
        puts ""
        puts "#{coffeeshop.description}" 
        puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"   
        puts ""
    end

end