class Kind < ApplicationRecord
    has_many :contact_kinds # possui muitos 
    has_many :contacts, through: :contact_kinds #possui muitos contatos através de 
end
