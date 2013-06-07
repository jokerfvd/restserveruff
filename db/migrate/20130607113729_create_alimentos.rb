class CreateAlimentos < ActiveRecord::Migration
  def change
    create_table :alimentos do |t|
      t.string :nome
      t.binary :tipo

      t.timestamps
    end
  end
end
