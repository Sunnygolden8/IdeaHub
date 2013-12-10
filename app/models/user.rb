class User < ActiveRecord::Base

  has_merit

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :ratings
  has_many :comments

  has_many :projects
  has_many :members

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def total_points 
      if user_signed_in?
          self.rewardPoints += 2
      end
         
      return self.rewardPoints
  end
  
  def spend amt
    cur_rewardPoints = self.rewardPoints
    self.rewardPoints = cur_rewardPoints - amt
    self.save
  end

end
