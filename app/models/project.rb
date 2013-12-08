class Project < ActiveRecord::Base
belongs_to :user, class_name: 'User', foreign_key: 'user_id'
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> upstream/master
has_many :comments

=======
has_many :comments
has_many :ratings
>>>>>>> 6a84ab86001a53f2fea204806286622138652315
end
