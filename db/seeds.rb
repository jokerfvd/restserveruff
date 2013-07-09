#encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Caracteristica.delete_all
c1 = Caracteristica.create!(:nome => "pizzaria")
c2 = Caracteristica.create!(:nome => "comida japonesa")
c3 = Caracteristica.create!(:nome => "comida mexicana")
c4 = Caracteristica.create!(:nome => "sinuca")
c5 = Caracteristica.create!(:nome => "karaokê")
c6 = Caracteristica.create!(:nome => "sinuca")

Estabelecimento.delete_all
e3 = Estabelecimento.create!(:nome => "Bar do Meio", :endereco => "Rua Cinco de Julho, 344 - Icaraí Niterói", 
:telefone => "(21) 2711-2632", :gostei => 5, :latitude => "-22.903811", :longitude => "-43.104175", :caracteristicas => [c1,c2])
e4 = Estabelecimento.create!(:nome => "Boteco Confraria", :endereco => "Rua Nóbrega, 237 - Jardim Icarai Niterói", 
:telefone => "(21) 2617-8110", :gostei => 5, :latitude => "-22.904424", :longitude => "-43.102115", :caracteristicas => [c2,c3])
e5 = Estabelecimento.create!(:nome => "Bar do Nani", :endereco => "Rua Domingues de Sá, 274-320 - Icaraí Niterói", 
:telefone => "", :gostei => 5, :latitude => "-22.903514", :longitude => "-43.104797", :caracteristicas => [c3,c4])
e6 = Estabelecimento.create!(:nome => "Novo Ponto", :endereco => "Rua Domingues de Sá, 192 - Icaraí Niterói", 
:telefone => "(21) 3701-0792", :gostei => 9, :latitude => "-22.905669", :longitude => "-43.107179", :caracteristicas => [c4,c5])
e7 = Estabelecimento.create!(:nome => "Chopp Shop", :endereco => "Rua Lopes Trovão, 439 - Icaraí Niterói", 
:telefone => "(21) 2714-2835", :gostei => 5, :latitude => "-22.899699", :longitude => "-43.104218", :caracteristicas => [c5,c6])
e8 = Estabelecimento.create!(:nome => "Souza Lima Bar de Icarai", :endereco => "Rua Geraldo Martins, 176 Niterói", 
:telefone => "(21) 2722-7558", :gostei => 10, :latitude => "-22.901992", :longitude => "-43.101858", :caracteristicas => [c1,c2,c3])
e9 = Estabelecimento.create!(:nome => "Adega Pérola", :endereco => "Rua Siqueira Campos, 138 Rio de Janeiro", 
:telefone => "(21) 2255-9425", :gostei => 5, :latitude => "-22.900787", :longitude => "-43.098939", :caracteristicas => [c4,c5,c6])
e10 = Estabelecimento.create!(:nome => "Botequim Cortiço", :endereco => "Rua Doutor Tavares Macedo, 139 - Icaraí Niterói", 
:telefone => "(21) 2714-2042", :gostei => 20, :latitude => "-22.904206", :longitude => "-43.111557", :caracteristicas => [c1,c2,c3,c4])
e11 = Estabelecimento.create!(:nome => "Bar Sabor de Icaraí", :endereco => "Rua General Pereira da Silva, 102 - Icaraí Niterói", 
:telefone => "(21) 3701-6240", :gostei => 5, :latitude => "-22.90389", :longitude => "-43.112222", :caracteristicas => [c1,c2,c3,c4,c5,c6])


Usuario.delete_all
u1 = Usuario.create!(:nome => "Felipe Duval", :login => "jokerfvd", :senha => "a")
u2 = Usuario.create!(:nome => "Felipe Ralph", :login => "println", :senha => "b")
u3 = Usuario.create!(:nome => "Raphael Guerra", :login => "rguerra", :senha => "c")

Produto.delete_all
a1 = Produto.create!(:nome => "cerveja 600ml", :tipo => 'B')
a2 = Produto.create!(:nome => "tulipa choop 200ml", :tipo => 'B')
a3 = Produto.create!(:nome => "batata frita", :tipo => 'C')
a4 = Produto.create!(:nome => "batata com bancon", :tipo => 'C')
a5 = Produto.create!(:nome => "refrigerante", :tipo => 'B')
a6 = Produto.create!(:nome => "pizza calabreza", :tipo => 'C')
a7 = Produto.create!(:nome => "frango a passarinho", :tipo => 'C')

Preco.delete_all
Preco.create!(:valor => "R$6,00", :estabelecimento_id => e3.id, :produto_id => a1.id)
Preco.create!(:valor => "R$2,00", :estabelecimento_id => e3.id, :produto_id => a2.id)
Preco.create!(:valor => "R$7,00", :estabelecimento_id => e4.id, :produto_id => a1.id)
Preco.create!(:valor => "R$3,00", :estabelecimento_id => e4.id, :produto_id => a2.id)
Preco.create!(:valor => "R$15,00", :estabelecimento_id => e4.id, :produto_id => a3.id)
Preco.create!(:valor => "R$18,00", :estabelecimento_id => e4.id, :produto_id => a4.id)
Preco.create!(:valor => "R$6,00", :estabelecimento_id => e5.id, :produto_id => a1.id)
Preco.create!(:valor => "R$2,00", :estabelecimento_id => e5.id, :produto_id => a2.id)
Preco.create!(:valor => "R$7,00", :estabelecimento_id => e6.id, :produto_id => a1.id)
Preco.create!(:valor => "R$3,00", :estabelecimento_id => e6.id, :produto_id => a6.id)
Preco.create!(:valor => "R$15,00", :estabelecimento_id => e7.id, :produto_id => a3.id)
Preco.create!(:valor => "R$18,00", :estabelecimento_id => e7.id, :produto_id => a4.id)
Preco.create!(:valor => "R$6,00", :estabelecimento_id => e8.id, :produto_id => a6.id)
Preco.create!(:valor => "R$2,00", :estabelecimento_id => e8.id, :produto_id => a2.id)
Preco.create!(:valor => "R$7,00", :estabelecimento_id => e9.id, :produto_id => a1.id)
Preco.create!(:valor => "R$3,00", :estabelecimento_id => e9.id, :produto_id => a7.id)
Preco.create!(:valor => "R$15,00", :estabelecimento_id => e10.id, :produto_id => a3.id)
Preco.create!(:valor => "R$18,00", :estabelecimento_id => e10.id, :produto_id => a4.id)
Preco.create!(:valor => "R$7,00", :estabelecimento_id => e11.id, :produto_id => a1.id)
Preco.create!(:valor => "R$3,00", :estabelecimento_id => e11.id, :produto_id => a2.id)
Preco.create!(:valor => "R$15,00", :estabelecimento_id => e11.id, :produto_id => a3.id)
Preco.create!(:valor => "R$18,00", :estabelecimento_id => e11.id, :produto_id => a7.id)

Favorito.create!(:usuario_id => u1.id, :estabelecimento_id => e3.id)
Favorito.create!(:usuario_id => u1.id, :estabelecimento_id => e4.id)
Favorito.create!(:usuario_id => u1.id, :estabelecimento_id => e5.id)
Favorito.create!(:usuario_id => u2.id, :estabelecimento_id => e3.id)
Favorito.create!(:usuario_id => u2.id, :estabelecimento_id => e5.id)
Favorito.create!(:usuario_id => u3.id, :estabelecimento_id => e7.id)

