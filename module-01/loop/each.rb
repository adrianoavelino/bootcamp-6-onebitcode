(1..5).each do |i|
    puts "o valor de i é: #{i}"
end

puts ''
puts '-' * 30
["banana", "maçã", "mamão"].each do |fruta|
    puts "a fruta é #{fruta}"
end

puts ''
puts '-' * 30
{a: "banana", b: "maçã", c: "mamao"}.each do |fruta|
    puts "a fruta é #{fruta.last}"
end