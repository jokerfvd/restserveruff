class RemoveAlimentoIdFromPreco < ActiveRecord::Migration
  def up
    remove_column :precos, :alimentoId
  end

  def down
    add_column :precos, :alimentoId, :integer
  end
end
