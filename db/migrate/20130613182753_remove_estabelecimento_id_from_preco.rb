class RemoveEstabelecimentoIdFromPreco < ActiveRecord::Migration
  def up
    remove_column :precos, :estabelecimentoId
  end

  def down
    add_column :precos, :estabelecimentoId, :integer
  end
end
