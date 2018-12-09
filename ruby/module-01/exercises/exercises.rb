# - Crie um array de strings possuindo 3 nomes de integrantes de uma equipe.
group = ['adriano', 'alex', 'mario']

# - Crie um loop onde exista a pergunta se o usuário quer adicionar novos membros 
#   na equipe até que o usuário responda não, caso sim, permita o usuário inserir o nome.
answer = true
while answer
    print "Would you like adding new members?(Y/n): "
    answer_user = gets.chomp
    system 'clear'
    if answer_user.match(/^[n]/i)
        answer = false
        break
    end
    puts '-' * 20 + ' Register ' + '-' * 20
    print 'Member Name: '
    member = gets.chomp
    group.push(member)
    # system 'clear'
end

# - Ao final use um each para listar o nome de cada membro da equipe.
system 'clear'
puts '-' * 20 + 'Member List' + '-' * 20
group.each {|member| puts "Name: #{member}"}

# - Permita o usuário inserir nome, idade e sexo de uma pessoa, monte um
#   hash com os dados passados e mostre-o ao usuário
puts '-' * 20 + 'Hash Register' + '-' * 20
person = {}
print 'Name: '
person['name'] = gets.chomp
print 'Age: '
person['age'] = gets.chomp
print 'Gender: (M/f) '
person['gender'] = gets.chomp

person.each {|key, val| puts "#{key} - #{val}"}
