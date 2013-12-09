class Project < ActiveRecord::Base
belongs_to :user, class_name: 'User', foreign_key: 'user_id'

has_many :comments
has_many :ratings

end
