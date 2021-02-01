class Space
    attr_accessor :name, :info, :fun_fact

    @@all = []

    def initialize(name, info, fun_fact)
        @name = name
        @fun_fact = fun_fact
        save
    end

    def self.save
        @@all << self
    end
    
    def self.all
        @@all
    end
end # end of class