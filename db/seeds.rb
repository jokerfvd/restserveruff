# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Estabelecimento.delete_all
e1 = Estabelecimento.create!(:nome => "Bandejao PV", :endereco => "Praia Vermelha", :telefone => "2345678", :rank => 4.0)
e2 = Estabelecimento.create!(:nome => "Bar Teste", :endereco => "Rua sem numero", :telefone => "4389643543", :rank => 2.7)

Usuario.delete_all
Usuario.create!(:nome => "Felipe Duval", :login => "jokerfvd", :senha => "a")
Usuario.create!(:nome => "Felipe Ralph", :login => "println", :senha => "b")
Usuario.create!(:nome => "Raphael Guerra", :login => "rguerra", :senha => "c")

Alimento.delete_all
a1 = Alimento.create!(:nome => "cerveja 600ml", :tipo => 'B')
a2 = Alimento.create!(:nome => "tulipa choop 200ml", :tipo => 'B')
a3 = Alimento.create!(:nome => "batata frita", :tipo => 'C')
a4 = Alimento.create!(:nome => "batata com bancon", :tipo => 'C')
a5 = Alimento.create!(:nome => "refrigerante", :tipo => 'B')
a6 = Alimento.create!(:nome => "pizza calabreza", :tipo => 'C')
a7 = Alimento.create!(:nome => "frango a passarinho", :tipo => 'C')

Preco.delete_all
Preco.create!(:valor => "R$6,00", :estabelecimento_id => e1.id, :alimento_id => a1.id)
Preco.create!(:valor => "R$2,00", :estabelecimento_id => e1.id, :alimento_id => a2.id)
Preco.create!(:valor => "R$7,00", :estabelecimento_id => e2.id, :alimento_id => a1.id)
Preco.create!(:valor => "R$3,00", :estabelecimento_id => e2.id, :alimento_id => a2.id)
Preco.create!(:valor => "R$15,00", :estabelecimento_id => e2.id, :alimento_id => a3.id)
Preco.create!(:valor => "R$18,00", :estabelecimento_id => e2.id, :alimento_id => a4.id)

