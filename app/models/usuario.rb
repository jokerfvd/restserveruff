class Usuario < ActiveRecord::Base
  attr_accessible :login, :nome, :senha, :token
  
  has_many :favoritos
  has_many :estabelecimentos, :through => :favoritos
end
