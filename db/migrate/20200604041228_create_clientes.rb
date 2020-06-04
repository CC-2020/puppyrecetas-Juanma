class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :mail
      t.string :nombre
      t.string :password_digest

      t.timestamps
    end
    add_index :clientes, :mail, unique: true
  end
end
