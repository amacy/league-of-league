class FantasyTeam < ActiveRecord::Base

  belongs_to :user
  belongs_to :week

  has_one :top,     :class_name => 'LCSPlayer'
  has_one :jungle,  :class_name => 'LCSPlayer'
  has_one :middle,  :class_name => 'LCSPlayer'
  has_one :adc,     :class_name => 'LCSPlayer'
  has_one :support, :class_name => 'LCSPlayer'

end
