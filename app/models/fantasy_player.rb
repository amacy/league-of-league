class FantasyPlayer < ActiveRecord::Base

  belongs_to :user
  belongs_to :lcs_player
  belongs_to :fantasy_team
  belongs_to :week

end
