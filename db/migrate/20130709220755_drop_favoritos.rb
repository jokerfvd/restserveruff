class DropFavoritos < ActiveRecord::Migration
  def up
	drop_table :favoritos
  end

  def down
  end
end
