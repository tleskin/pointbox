class User < ActiveRecord::Base
  validates :username, :password, :password_confirmation, presence:true
  has_secure_password
end
