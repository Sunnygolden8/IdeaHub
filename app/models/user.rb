class User < ActiveRecord::Base
has_many :points  
has_many :badges , :through => :levels 
has_many :levels  

def change_points(options)
  if Gioco::Core::KINDS
    points = options[:points]
    kind   = Kind.find(options[:kind])
  else
    points = options
    kind   = false
  end

  if Gioco::Core::KINDS
    raise "Missing Kind Identifier argument" if !kind
    old_pontuation = self.points.where(:kind_id => kind.id).sum(:value)
  else
    old_pontuation = self.points.to_i
  end
  new_pontuation = old_pontuation + points
  Gioco::Core.sync_resource_by_points(self, new_pontuation, kind)
end

def next_badge?(kind_id = false)
  if Gioco::Core::KINDS
    raise "Missing Kind Identifier argument" if !kind_id
    old_pontuation = self.points.where(:kind_id => kind_id).sum(:value)
  else
    old_pontuation = self.points.to_i
  end
  next_badge       = Badge.where("points > #{old_pontuation}").order("points ASC").first
  last_badge_point = self.badges.last.try('points')
  last_badge_point ||= 0

  if next_badge
    percentage      = (old_pontuation - last_badge_point)*100/(next_badge.points - last_badge_point)
    points          = next_badge.points - old_pontuation
    next_badge_info = {
                        :badge      => next_badge,
                        :points     => points,
                        :percentage => percentage
                      }
  end
end

  has_merit

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :ratings
  has_many :comments
  has_many :rewards
  has_many :projects
  has_many :members

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def incrementing
    #cur_points = self.points
    #self.points = cur_points + opt
    #self.save
     #self.increment!(self[:points])
<<<<<<< HEAD
     self.increment!:rewards
=======
     self.increment!(:rewards)
>>>>>>> 90ea4bd53af37c81194ed97119465a53de047f9e
  end
  
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
