class CreateFantasyPlayers < ActiveRecord::Migration
  def change
    create_table :fantasy_players do |t|
      t.column :user_id,         :integer, :null => false
      t.column :lcs_player_id,   :integer, :null => false
      t.column :fantasy_team_id, :integer, :null => false
      t.column :week_id,         :integer, :null => false

      t.timestamps
    end
  end
end
