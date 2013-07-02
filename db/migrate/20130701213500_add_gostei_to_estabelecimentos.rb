class AddGosteiToEstabelecimentos < ActiveRecord::Migration
  def change
    add_column :estabelecimentos, :gostes, :integer
  end
end
