class RemoveAlimentoIdFromPrecos < ActiveRecord::Migration
  def up
    remove_column :precos, :alimento_id
  end

  def down
    add_column :precos, :alimento_id, :string
  end
end
