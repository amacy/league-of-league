class CreateLcsPlayers < ActiveRecord::Migration
  def change
    create_table :lcs_players do |t|
      t.column :lcs_team_id, :integer, :null => false
      t.column :role, :string, :null => false

      t.timestamps
    end
  end
end
