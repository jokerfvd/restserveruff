class Preco < ActiveRecord::Base
   attr_accessible :valor, :estabelecimento_id, :produto_id
   
   belongs_to :estabelecimento
   belongs_to :produto
end
