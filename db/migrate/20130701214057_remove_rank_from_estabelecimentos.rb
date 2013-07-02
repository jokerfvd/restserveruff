class RemoveRankFromEstabelecimentos < ActiveRecord::Migration
  def up
    remove_column :estabelecimentos, :rank
  end

  def down
    add_column :estabelecimentos, :rank, :string
  end
end
