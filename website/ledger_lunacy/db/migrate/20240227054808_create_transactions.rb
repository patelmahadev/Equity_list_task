class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :activity_id
      t.datetime :date
      t.string :transaction_type
      t.string :method
      t.decimal :amount
      t.decimal :balance
      t.string :requester_type
      t.string :source_type
      t.integer :source_id
      t.string :source_description
      t.string :destination_type
      t.integer :destination_id
      t.string :destination_description

      t.timestamps
    end
  end
end
