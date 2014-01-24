class CreateLcsGames < ActiveRecord::Migration
  def change
    create_table :lcs_games do |t|
      t.column :week_id,         :integer, :null => false
      t.column :winning_team_id, :integer, :null => false
      t.column :losing_team_id,  :integer, :null => false
      t.column :length,          :integer, :null => false

      t.timestamps
    end
  end
end
