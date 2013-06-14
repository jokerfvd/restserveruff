class AddEstabelecimentIdToPreco < ActiveRecord::Migration
  def change
    add_column :precos, :estabelecimento_id, :integer
  end
end
