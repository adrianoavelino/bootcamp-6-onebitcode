module Mathematical_Operations
    def sum(a, b)
        begin
            raise TypeError, "Incorrect data type" unless a.is_a? Numeric and b.is_a? Numeric
            puts a + b
        rescue TypeError
            puts "Incorrect data, you only must pass numbers as parameters"
        rescue StandardError => s
            puts "Unexpected error: " + s.message
        end
    end

    def subtraction(a, b)
        begin
            raise TypeError, "Incorrect data type" unless a.is_a? Numeric and b.is_a? Numeric
            puts a - b
        rescue TypeError
            puts "Incorrect data, you only must pass numbers as parameters"
        rescue StandardError => s
            puts "Unexpected error: " + s.message
        end
    end

    def division(a, b)
        begin
            raise TypeError, "Incorrect data type" unless a.is_a? Numeric and b.is_a? Numeric
            puts a / b
        rescue TypeError
            puts "Incorrect data, you only must pass numbers as parameters"
        rescue ZeroDivisionError
            puts "There is no exist division by zero"
        rescue StandardError => s
            puts "Unexpected error: " + s.message
        end
    end

    def multiply(a, b)
        begin
            raise TypeError, "Incorrect data type" unless a.is_a? Numeric and b.is_a? Numeric
            puts a * b
        rescue TypeError
            puts "Incorrect data, you only must pass numbers as parameters"
        rescue StandardError => s
            puts "Unexpected error: " + s.message
        end
    end
end

class Person
    
    include Mathematical_Operations

    def initialize(name, age, height, sex)
        @name = name
        @age = age
        @height = height
        @sex = sex
    end
    
    def talk
        puts "Ola"
    end
    
    def walk(steps)
        puts "#{@name} andou #{steps} passos"
    end
    
    def set_name(name)
        @name = name
    end
    
    def to_sleep
        puts "Boa noite, hora de dormir"
    end
    
    def to_eat(meal)
        puts "hora de comer #{meal}"
    end
    
    def introduce
        puts "Me chamo #{@name} tenho #{@age} anos, tenho #{@height} de altura e sou #{@sex}"
    end
end
