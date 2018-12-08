require_relative "person"
require_relative "athlete"
require_relative "professional"

pessoa1 = Person.new("Cristi Allan", 23, 1.75, "homem")
pessoa2 = Person.new("Maria", 25, 1.63, "mulher")
pessoa1.introduce
pessoa2.introduce

puts "--------------------------------------------------------"
atleta = Athlete.new("Cristi", 23, 1.75, "homem", "jiu jitsu")
atleta.introduce
atleta.set_sport("natação")
atleta.introduce
atleta.my_sport
atleta.sum(5, 7)
atleta.subtraction(5, 7)
atleta.multiply(8, 2)
atleta.division(14, 0)
puts "--------------------------------------------------------"
professional = Professional.new('João', 34, 1.78,  'homem', 'professor')
professional.introduce
professional.set_profession('engenheiro')
professional.introduce
professional.my_profession
