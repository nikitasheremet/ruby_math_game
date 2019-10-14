class Players
    attr_accessor :lives, :name

    def initialize(name)
        @lives = 3
        @name = name
    end

    def lives?
        "#{self.lives}/3"
    end
end



