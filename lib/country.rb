class Caricom::Country

    @@all = []
    
    attr_accessor :name, :capital, :population

    def initialize(name,capital,population)
        @name = name
        @capital = capital
        @population = population
        @@all << self
        save
    end 

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end