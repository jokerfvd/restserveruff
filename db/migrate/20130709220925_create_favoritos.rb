class CreateFavoritos < ActiveRecord::Migration
  def change
    create_table :favoritos do |t|
      t.references :usuario
      t.references :estabelecimento

      t.timestamps
    end
    add_index :favoritos, :usuario_id
    add_index :favoritos, :estabelecimento_id
  end
end
