
class Space
    attr_accessor :info, :fun_fact
     
    @@all = []

    def initialize(info, fun_fact)
        @fun_fact = fun_fact
        @info = info
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_input(input)
        new_planet = Scraper.new(input)
        new_planet.Cli = self 
    end

    def self.find_by_name(input)
        ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "neptune"].all.find{|p| p.name == input}
        name
    end
end # end of class