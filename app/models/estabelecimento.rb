class Estabelecimento < ActiveRecord::Base
  attr_accessible :endereco, :latitude, :longitude, :nome, :rank, :telefone
  
  has_many :precos
  has_many :alimentos, :through => :precos
end
