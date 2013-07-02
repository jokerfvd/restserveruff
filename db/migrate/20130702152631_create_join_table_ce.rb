
class CreateJoinTableCe < ActiveRecord::Migration
  def up
    create_table :caracteristicas_estabelecimentos, :id => false do |t| 
		t.references  :caracteristica, :estabelecimento
	end
  end

  def down
  end
end
