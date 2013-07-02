class Estabelecimento < ActiveRecord::Base
  attr_accessible :endereco, :latitude, :longitude, :nome, :gostei, :telefone, :caracteristicas
  
  has_many :precos
  has_and_belongs_to_many :caracteristicas
  has_many :produtos, :through => :precos
end
