class AddFavoritoToEstabelecimentos < ActiveRecord::Migration
  def change
    add_column :estabelecimentos, :favorito, :boolean
  end
end
