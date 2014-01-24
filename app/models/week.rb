class Week < ActiveRecord::Base

  has_many :fantasy_teams
  has_many :fantasy_players
  has_many :lcs_games

  validates_presence_of :start_date, :end_date

end
