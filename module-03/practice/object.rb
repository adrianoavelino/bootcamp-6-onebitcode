require_relative "person"
require_relative "athlete"

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
atleta.soma(5, 7)
