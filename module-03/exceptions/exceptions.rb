def sum(a, b)
    begin
        raise TypeError, "Incorrect data type" unless a.is_a? Numeric and b.is_a? Numeric
        puts a + b
    rescue TypeError
        puts "Incorrect data, you only must pass numbers as parameters"
    rescue StandardError => s
        puts 'standard ' + s.name
    end
end

sum(3,"5")