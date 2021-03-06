# Be sure to restart your server when you modify this file.
#
# Points are a simple integer value which are given to "meritable" resources
# according to rules in +app/models/merit/point_rules.rb+. They are given on
# actions-triggered, either to the action user or to the method (or array of
# methods) defined in the +:to+ option.
#
# 'score' method may accept a block which evaluates to boolean
# (recieves the object as parameter)

module Merit
  class PointRules
    include Merit::PointRulesMethods

    def initialize
      score 2, :on => 'sessions#new'
      
      score 10, :on => 'users#update' do
         user.name.present?
      end
      #
      score 15, :on => 'users#new'#:to => [:current_user, :points]
      #
      score 20, :on => [
         'comments#create',
         'projects#create'
       ]
    end
  end
end
