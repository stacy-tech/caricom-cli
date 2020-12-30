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

    def self.low_population
        # binding.pry
        result = []
        # This method will return an array of countries with a population below 300000
        Caricom::Country.all.each.population < 300000

        |country.population|
    

        return
            country.population
        end
    end

    def self.high_population
        # This method will return an array of country objects with a population over 800000
    end
end

# Get really comfortable with iteration