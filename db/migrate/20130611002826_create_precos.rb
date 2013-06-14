class CreatePrecos < ActiveRecord::Migration
  def change
    create_table :precos do |t|

      t.timestamps
    end
  end
end
