# Bootcamp 6 do One Bit Code

### Minicurso de Ruby

### Minicurso de Ruby on Rails
- Módulo 2 – Rails console e Active Records
    - `rails new agenda`: cria um projeto rails
    - `rails g model Contact name`: cria a tabela Contact com a coluna name do tipo string
    - `rails g model Phone number contact:references`: cria a tabela Phone com a coluna number do tipo string e a coluna contact como chave estrangeira para a tabela Contact
    - `rails g model Address street number neighborhood`: cria a tabela Address com a coluna street do tipo string, a coluna number do tipo string e a coluna neighborhood do tipo struing
    - `rails g model Kind name`: cria a tabela kind com a coluna name do tipo string 
    - `rails g model ContactKind contact:references kind:references`: cria a tabela ContactKind com a coluna contact com a chave estrangeira referente a tabela contact e a coluna kind referente a chave estrangeira da tabela kind
    - `rails db:migrate`: cria as tabelas no banco de dados
    - `rails console`: acessa o console do rails
        - salvar registro no banco de dados:
            ```bash
            c = Contact.new
            c.name = 'joao'
            c.save
            #ou
            Contact.create(name: 'maria')
            ```
        - atualizar registro no banco de dados:
            ```bash
            c = Contact.last # pega o último registro da tabela
            c.name = 'joao vicente'
            c.save
            #ou
            Contact.last.update(name: 'maria clara')
            ```
        - consultar registros:
        ```bash
        Contact.all #todos os registros
        Contact.first #primeiro registro
        Contact.last #último registro
        ```
        - deletar registros:
        ```bash
        c = Contact.last
        c.destroy
        ```

