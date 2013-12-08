class Project < ActiveRecord::Base
belongs_to :user, class_name: 'User', foreign_key: 'user_id'
<<<<<<< HEAD
=======

>>>>>>> upstream/master
has_many :comments

end
