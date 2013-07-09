class CreateFavoritos < ActiveRecord::Migration
  def change
    create_table :favoritos, :id => false do |t|
      t.integer :estabelecimento_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
