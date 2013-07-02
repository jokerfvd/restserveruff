class RemoveGostesFromEstabelecimentos < ActiveRecord::Migration
  def up
    remove_column :estabelecimentos, :gostes
  end

  def down
    add_column :estabelecimentos, :gostes, :string
  end
end
