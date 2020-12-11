class Caricom::CLI

    def run
        greeting
        binding.pry
        menu
        goodbye
    end 

    def greeting
        puts "Hello!, Welcome to my Caribbean Community information app!"
    end 

    def menu
        list_country
    end 

    def list_country
        Caricom::Country.each.with_index(1) do |country, index|
            puts "#{index}. #{country.name}"
        end
    end 

    def 

    def goodbye
        puts "Thank you for stopping by!"
    end 

end 

Caricom::ClI