class CreateEstabelecimentos < ActiveRecord::Migration
  def change
    create_table :estabelecimentos do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.float :longitude
      t.float :latitude
      t.float :rank

      t.timestamps
    end
  end
end
