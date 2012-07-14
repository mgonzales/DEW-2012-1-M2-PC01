class CreateProdutcs < ActiveRecord::Migration
  def change
    create_table :produtcs do |t|
      t.integer :codigo
      t.text :descripcion
      t.integer :precio

      t.timestamps
    end
  end
end
