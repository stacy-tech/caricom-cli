class Caricom::Country

    attr_accessor :name, :capital, :population

    @@all = []

    def initialize(name,capital,population)
        @name = name
        @capital = capital
        @population = population
        @@all << self
    end 

    def self.all
        @@all
    end

end