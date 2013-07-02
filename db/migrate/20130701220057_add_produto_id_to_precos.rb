class AddProdutoIdToPrecos < ActiveRecord::Migration
  def change
    add_column :precos, :produto_id, :integer
  end
end
