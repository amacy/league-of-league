class FantasyTeam < ActiveRecord::Base

  belongs_to :user
  belongs_to :week

  has_one :top,     :class_name => 'LcsPlayer'
  has_one :jungle,  :class_name => 'LcsPlayer'
  has_one :middle,  :class_name => 'LcsPlayer'
  has_one :adc,     :class_name => 'LcsPlayer'
  has_one :support, :class_name => 'LcsPlayer'

end
