class AddGostei1ToEstabelecimentos < ActiveRecord::Migration
  def change
    add_column :estabelecimentos, :gostei, :integer
  end
end
