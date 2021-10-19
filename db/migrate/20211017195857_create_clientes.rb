class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.text :direccion
      t.integer :ntelefono

      t.timestamps
    end
  end
end
