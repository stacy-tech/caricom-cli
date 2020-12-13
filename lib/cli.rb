class Caricom::CLI

    def run
        greeting
        menu
    end 

    def greeting
        puts "Hello!, and Welcome to my Caribbean Community information app!"  
    end 

    def menu
        Caricom::API.new.get_country
        list_country
    end 

    def list_country
        Caricom::Country.all.each.with_index(1) do |country, i|
            puts "#{i}. #{country.name}"
        end
        puts "Please pick a Country you would like more information on."
        user_response
    end 

    def user_response
        country_number = gets.chomp.to_i
        if country_number == 0
            invalid_number
        elsif country_number > Caricom::Country.all.count
            invalid_number
        end

        Caricom::Country.all.each.with_index(1) do |country, i|
            if country_number == i
                puts "The capital of #{country.name} is #{country.capital}. The population is #{country.population}."
                goodbye
            end
        end

    end

    def invalid_number
        puts "You've entered an invalid number."
        list_country
    end

    def goodbye
        puts "Type country if you want to learn more about another country, or Type Exit if you're done."
        user_options = gets.chomp
        if user_options == "country" 
            list_country
        elsif user_options == "exit"
            puts "Thank you for using Caricom Cli!"
        else
            puts "You've entered an invalid option."
            goodbye
        end
    
    end 

end 