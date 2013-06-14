class Preco < ActiveRecord::Base
   attr_accessible :valor, :estabelecimento_id, :alimento_id
   
   belongs_to :estabelecimento
   belongs_to :alimento
end
