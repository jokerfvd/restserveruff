class Usuario < ActiveRecord::Base
  attr_accessible :login, :nome, :senha
end
