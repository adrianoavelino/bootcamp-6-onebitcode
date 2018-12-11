# Bootcamp 6 do One Bit Code

### Minicurso de Ruby

### Minicurso de Ruby on Rails
- Módulo 1 – Blog em 10 minutos
    - `rails new my_blog`
    - `rails g scaffold Category name description`
    - `rails g scaffold Post title description:text category:references`
    - `rails g controller Pages home`
    - `rails db:migrate`

- Módulo 2 – Rails console e Active Records
    - `rails new agenda`: cria um projeto rails
    - `cd agenda`: entra no diretório agenda
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
- Módulo 2 – Controllers – CRUD
    - `rails g controller Contacts index show new create edit update destroy`: cria o controller Contact com os métodos index show new create edit update destroy
    - altere o arquivo `config/routes.rb` conforme o exemplo abaixo:
    ```ruby
    Rails.application.routes.draw do
        get 'contacts/index'
        get 'contacts/show'
        get 'contacts/new'
        post 'contacts/create'
        get 'contacts/edit'
        put 'contacts/update'
        delete 'contacts/destroy'
        get 'welcome/index'
        root 'welcome#index'
    end
    ```
    - e no diretório `app/views/contacts/` delete os arquivos destroy.erb, create.erb e destroy.erb
    - edite o arquivo `app/controllers/contacts_controller.rb` conforme o exemplo abaixo:
    ```ruby
    class ContactsController < ApplicationController
        before_action :set_contact, only: [:show, :edit, :update, :destroy]

        def index
            @contacts = Contact.all
        end

        def show
        end

        def new
            @contact = Contact.new
        end

        def create
            @contact = Contact.new(contact_params)
            if @contact.save
            redirect_to contacts_path
            else
            render :new, notice: "Não foi possível criar um novo contato"
            end
        end

        def edit
        end

        def update
            if @contact.update(contact_params)
            redirect_to contacts_path
            else
            render :new, notice: "Não foi possível editar o contato"
            end
        end

        def destroy
            @contact.destroy
            redirect_to contact_path
        end

        private

        def set_contact
            @contact = Contact.find(params[:id])
        end

        def contact_params
            params.require(:contact).permit(:name)
        end
    end
    ```
- Módulo 2 – Parâmetros

    Para verificar os parâmetros, após iniciar o server com `rails server`, adicione o comando `byebug` dentro do método arquivo `app/controllers/categories_controller.rb`. Assim que for acessada a url utilize o terminal para verificar os valores. Exemplo: params
