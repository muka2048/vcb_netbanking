class CreateBankAccountOperations < ActiveRecord::Migration
  def change
    create_table :bank_account_operations do |t|
      t.timestamp :issueTime
      t.string :operationType
      t.decimal :amount
      t.references :bank_account

      t.timestamps
    end
    add_index :bank_account_operations, :bank_account_id
  end
end
