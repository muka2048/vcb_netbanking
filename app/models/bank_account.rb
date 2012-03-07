class BankAccount < ActiveRecord::Base  
  validates :balance,  :presence => true
  validates :user_id,  :presence => true
  validates :bankAccountNo, :presence => true,
    :length => { :minimum => 10 }
    
  belongs_to :user
  has_many :bank_account_operations, :dependent => :destroy

end
