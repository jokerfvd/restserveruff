class Caracteristica < ActiveRecord::Base
  attr_accessible :nome
  has_and_belongs_to_many :estabelecimentos
end
