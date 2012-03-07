class User < ActiveRecord::Base
  acts_as_authentic
  has_many :bank_accounts, :dependent => :destroy
end
