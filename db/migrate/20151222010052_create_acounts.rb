class CreateAcounts < ActiveRecord::Migration
  def change
    create_table :acounts do |t|
      t.string :client
      t.text :description
      t.integer :balance
      t.string :acount_tipe
      t.datetime :date
      t.integer :amount

      t.timestamps null: false
    end
  end
end
