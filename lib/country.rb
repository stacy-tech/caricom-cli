class Caricom::Country

    @@all = []
    
    attr_accessor :name, :capital, :population 

    def initialize(name:, capital:, population:)
        @name = name
        @capital = capital
        @population = population
        save
    end 

    #instance method
    def save
        @@all << self
    end

    #class method
    def self.all
        @@all
    end

    

    # Caricom::Country.population_under(800000)
    # Caricom::Country.population_under(450000)
    def self.population_under(value)

        Caricom::Country.all.select { |country| country.population < value }
    end

    def self.population_over(num)
        result = []
        Caricom::Country.all.each do |country|
            if country.population > num
                result << country
            end
        end

        return result

    end

    def self.countries_with_capitals_that_start_with_p
        # This method will return an array of countries with capitals that start with p.
        Caricom::Country.all.select { |country| country.capital.start_with? 'P' }
    end

    def self.countries_with_capitals_that_start_with(letter)
        # Homework method.
        Caricom::Country.all.select { |country| country.capital.start_with? letter.upcase }

    end
    

    def self.high_population
        # This method will return an array of country objects with a population over 800000

        Caricom::Country.all.select { |country| country.population > 800000 }
        
    end

    # This method will return an array of countries capital.
    def self.country_capital
         result = []
        Caricom::Country.all.each do |country|
            result << country.capital
        end
        return result    
    end
    
    # write a method that returns an array of the countries city and index number.
    def self.city
        result = []
        Caricom::Country.all.each.with_index do |country, index|
            result << "#{index}. #{country.capital}"
        end
        return result
    end


    # write a method that returns an array of countries greater tan 3000000 and less than 7000000.
    def self.countries

        result = []
        Caricom::Country.all.each do |country|
            if country.population > 300000 && country.population < 700000
                result << country
            end
        end
        return result
    end

end

# Get really comfortable with iteration