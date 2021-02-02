class Space
    attr_accessor :info, :fun_fact
    attr_reader :name

    @@all = []

    def initialize(name, info, fun_fact)
        @name = name
        @fun_fact = fun_fact
        @info = info
        save
    end

    def self.save
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.detect{|p| p.name == name}
    end
end # end of class