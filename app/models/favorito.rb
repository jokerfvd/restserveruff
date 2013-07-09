class Favorito < ActiveRecord::Base
  attr_accessible :estabelecimento_id, :usuario_id
  
  belongs_to :estabelecimento, :class_name => "Estabelecimento", :foreign_key => :estabelecimento_id
  belongs_to :usuario, :class_name => "Usuario", :foreign_key => :usuario_id
end
