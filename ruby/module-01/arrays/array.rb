#inicializando array
a = []
b = Array.new
c = ["abc", 1, ["Ruby", "Rails"]]
 
#acessando valores
puts c[0] # c.first - acessa o primeiro indice
puts c.last # acessa ultimo indice do arrays
 
#descobrindo tamanho do array
c.size # ou c.length
 
#usando o each de uma linha para iterar os indices com valores desejados
nums = Array.new(10) { |e| e = e * 2 } # [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
 
#usando range para popular array de numeros
array = Array(0..5) # [1, 2, 3 , 4, 5]
val = array.at(3) # posição 3 valor "4"
 
array[0] = "abc"
array[-1] = ["a", "b", "c"]
 
puts [1, 2, 3, 4].map { |e|  e*2 } # [2, 4, 6, 8]
