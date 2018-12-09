class Contact < ApplicationRecord
    has_many :phones # possui muitos telefones
    has_one :address # possui um endereço
   
    has_many :contact_kinds # contact possui muitos 
    has_many :kinds, through: :contact_kinds # contact possui muitos kinds, através de
end
