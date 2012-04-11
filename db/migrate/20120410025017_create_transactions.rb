class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :id
      t.string :name
      t.decimal :amount
      t.integer :date

      t.timestamps
    end
  end
end
