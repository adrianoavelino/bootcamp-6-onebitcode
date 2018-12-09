#Hash chaveados com strings
hash = { "nome" => "Marcos", "idade" => 23 }
hash["nome"]
hash["idade"]
 
#símbolos: apontam para o mesmo espaço da memória
cor1 = :vermelho
cor2 = :vermelho
 
 
#Hash chaveado com símbolos
hash { nome: "Marcos", idade: 23 } #depois do ruby 1.9
hash { :nome => "Marcos", :idade => 23 } #Antes do ruby 1.9

# acessa os valores do hash
hash[:nome]
hash[:idade]
