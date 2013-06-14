class Alimento < ActiveRecord::Base
  attr_accessible :nome, :tipo, :preco
  
  has_many :precos
  has_many :estabelecimentos, through: :precos
  has_one :preco, :through => :estabelecimento
end
