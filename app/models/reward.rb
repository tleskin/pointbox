class Reward < ActiveRecord::Base
  validates :name, :point_value, presence:true
end
