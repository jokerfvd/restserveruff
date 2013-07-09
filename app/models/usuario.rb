class Usuario < ActiveRecord::Base
  attr_accessible :login, :nome, :senha
  
  has_many :favoritos
  has_many :estabelecimentos, :through => :favoritos
end
