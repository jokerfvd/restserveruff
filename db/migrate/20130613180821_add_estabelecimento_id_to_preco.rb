class AddEstabelecimentoIdToPreco < ActiveRecord::Migration
  def change
    add_column :precos, :estabelecimentoId, :integer
  end
end
