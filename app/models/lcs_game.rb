class LcsGame < ActiveRecord::Base

  belongs_to :week

  has_many :lcs_teams
  has_many :player_stats

  validates_numericality_of :week_id, :winning_team_id, :losing_team_id, :length

  def winner
    @winner ||= LcsTeam.find winning_team_id
  end
  
  def loser
    @loser ||= LcsTeam.find losing_team_id
  end

end
