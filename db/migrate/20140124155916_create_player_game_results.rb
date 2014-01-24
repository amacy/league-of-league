class CreatePlayerGameResults < ActiveRecord::Migration
  def change
    create_table :player_game_results do |t|
      t.column :game_id,           :integer, :null => false
      t.column :lcs_player_id,     :integer, :null => false
      t.column :fantasy_player_id, :integer, :null => false
      t.column :kills,             :integer, :null => false
      t.column :deaths,            :integer, :null => false
      t.column :assists,           :integer, :null => false
      t.column :cs,                :integer, :null => false
    
      t.timestamps
    end
  end
end
