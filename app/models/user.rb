class User < ActiveRecord::Base
  validates :username, :password, :password_confirmation, presence:true
  has_secure_password

  def to_param
    username
  end
end
