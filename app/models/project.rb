class Project < ActiveRecord::Base
belongs_to :user, class_name: 'User', foreign_key: 'user_id'
<<<<<<< HEAD
has_many :comments
=======
>>>>>>> 33d82b381f4ba8f0bb6d65c84c2c6661e3bd943f
end
