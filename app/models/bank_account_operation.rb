class BankAccountOperation < ActiveRecord::Base
  validates :operationType,  :presence => true
  validates :amount,  :presence => true
  validates :bank_account_id, :presence => true
  
  belongs_to :bank_account
end
