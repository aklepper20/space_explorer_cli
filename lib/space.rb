class Space
    attr_accessor :name, :info, :fun_fact

    @@all = []

    def initialize( info=nil, fun_fact=nil)
        @fun_fact = fun_fact
        save
    end

    def self.save
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.name
        @name = ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "neptune"]
    end
end # end of class