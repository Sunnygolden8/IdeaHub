class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
<<<<<<< HEAD
<<<<<<< HEAD
  has_many :ratings
  has_many :comments
=======
>>>>>>> 2b82886ffcab7efaddea81b2a55bbd283f5ae00c
=======
  has_many :ratings
  has_many :comments
>>>>>>> upstream/master
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  
end
