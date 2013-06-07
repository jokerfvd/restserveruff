class Estabelecimento < ActiveRecord::Base
  attr_accessible :endereco, :latitude, :longitude, :nome, :rank, :telefone
end
