class User < ActiveRecord::Base
<<<<<<< HEAD
=======
  has_merit

>>>>>>> 33d82b381f4ba8f0bb6d65c84c2c6661e3bd943f
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :ratings
  has_many :comments
<<<<<<< HEAD
  has_many :projects
=======
<<<<<<< HEAD
  has_many :projects
=======
>>>>>>> 33d82b381f4ba8f0bb6d65c84c2c6661e3bd943f
>>>>>>> clam4-master

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
<<<<<<< HEAD
=======
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

>>>>>>> 33d82b381f4ba8f0bb6d65c84c2c6661e3bd943f
  
end
