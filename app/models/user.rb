class User < ActiveRecord::Base

  has_secure_password
  has_many :user_rewards
  has_many :rewards, through: :user_rewards

  enum role: %w(default admin)

  def to_param
    username
  end

end
