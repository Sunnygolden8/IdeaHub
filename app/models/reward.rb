class Reward < ActiveRecord::Base
  belongs_to :user
  
  def to_i
    numbers
    return self.rewards.to_i
  end
end
