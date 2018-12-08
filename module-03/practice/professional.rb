require_relative "person"

class Professional < Person
    def initialize(name, age, height, sex, profession)
        super(name, age, height, sex)
        @profession = profession
    end

    def introduce
        puts "Me chamo #{@name} tenho #{@age} anos, tenho #{@height} de altura, #{@sex} e sou #{@profession}"
    end
    
    def my_profession
        puts "Eu sou #{@profession}"
    end
    
    def set_profession(profession)
        @profession = profession
    end
end