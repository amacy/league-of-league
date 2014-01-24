class PlayerGameResult < ActiveRecord::Base

  belongs_to :game
  belongs_to :lcs_player
  belongs_to :fantasy_player

  validates_numericality_of :kills, :deaths, :assists, :cs

end
