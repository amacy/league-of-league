class LcsPlayer < ActiveRecord::Base
  
  belongs_to :lcs_team

  has_many :fantasy_teams
  has_many :fantasy_players
  
  validates_presence_of :role

end
