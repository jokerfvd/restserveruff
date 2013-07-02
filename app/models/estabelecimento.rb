class Estabelecimento < ActiveRecord::Base
  attr_accessible :endereco, :latitude, :longitude, :nome, :gostei, :telefone
  
  has_many :precos
  has_many :produtos, :through => :precos
end
