count = 1

until count > 5 do
    puts "count = #{count}"
    count += 1
end

puts ''
puts '-' * 30
count = 1
begin
    puts "count = #{count}"
    count += 1
end until count > 5

puts ''
puts '-' * 30
boolean = false
num = 1

until boolean == true
    if num > 10
        boolean = true
    end
    puts num
    num += 1
end