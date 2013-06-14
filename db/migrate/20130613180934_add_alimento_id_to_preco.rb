class AddAlimentoIdToPreco < ActiveRecord::Migration
  def change
    add_column :precos, :alimentoId, :integer
  end
end
