class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :firtsname
      t.string :lastname
      t.string :phone
      t.string :address
      t.integer :status

      t.timestamps null: false
    end
  end
end
