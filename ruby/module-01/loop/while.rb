count = 1

#enquanto
while count < 5 do
    puts "count = #{count}"
    count += 1
end

puts ''
puts '-' * 30
#do while
count = 1
begin
    puts "count = #{count}"
    count += 1
end while count < 5

puts ''
puts '-' * 30

boolean = true
num = 1
while boolean == true
    if num > 10
        boolean = false
    end
    puts num
    num +=1
end
