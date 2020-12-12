class Caricom::CLI

    def run
        greeting
        menu
        goodbye
    end 

    def greeting
        puts "Hello!, and Welcome to my Caribbean Community information app!"
    end 

    def menu
        list_country
    end 

    def list_country
        Caricom::Country.all.each.with_index(1) do |country, i|
            puts "#{i}. #{country.name}"
        end
    end 

    def goodbye
        puts "Thank you for using Caricom Cli!"
        exit
    end 

end 