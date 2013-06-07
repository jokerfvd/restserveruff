# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Estabelecimento.delete_all
Estabelecimento.create!(:nome => "Bandejao PV", :endereco => "Praia Vermelha", :telefone => "2345678", :rank => 4.0)
Estabelecimento.create!(:nome => "Bar Teste", :endereco => "Rua sem numero", :telefone => "4389643543", :rank => 2.7)

Usuario.delete_all
Usuario.create!(:nome => "Felipe Duval", :login => "jokerfvd", :senha => "a")
Usuario.create!(:nome => "Felipe Ralph", :login => "println", :senha => "b")
Usuario.create!(:nome => "Raphael Guerra", :login => "rguerra", :senha => "c")