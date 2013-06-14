class AddValorToPreco < ActiveRecord::Migration
  def change
    add_column :precos, :valor, :string
  end
end
