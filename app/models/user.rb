class User < ActiveRecord::Base
  attr_accessible :email, :user_type
  validates :email,  :presence => true, :length => { :minimum => 6 }, :uniqueness => true, :email => true
end
