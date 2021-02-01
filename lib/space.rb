class Space
    attr_accessor :name, :info, :fun_fact

    @@all = []

    def initialize(name, info, fun_fact)
        @name = name
        @info
        @fun_fact
        @@all << self
    end

    def self.all
        @@all
    end
end # end of class