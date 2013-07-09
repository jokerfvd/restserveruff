class Favorito < ActiveRecord::Base
  attr_accessible :estabelecimento_id, :usuario_id
  
  belongs_to :usuario
  belongs_to :estabelecimento
end
