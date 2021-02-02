
class Space
    attr_accessor :name, :info, :fun_fact
     
    @@all = []

    def initialize(name=nil, info=nil, fun_fact=nil)
        @name = name
        @fun_fact = fun_fact
        @info = info
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(input)
        self.all.detect{|p| p.name == input}
        name
    end
end # end of class