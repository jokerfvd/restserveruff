class AddAlimentIdToPreco < ActiveRecord::Migration
  def change
    add_column :precos, :alimento_id, :integer
  end
end
