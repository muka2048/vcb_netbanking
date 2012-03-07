class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :bankAccountNo
      t.decimal :balance
      t.date :creationDate
      t.references :user

      t.timestamps
    end
    add_index :bank_accounts, :user_id
  end
end
