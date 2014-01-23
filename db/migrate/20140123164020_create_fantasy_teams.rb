class CreateFantasyTeams < ActiveRecord::Migration
  def change
    create_table :fantasy_teams do |t|
      t.column :user_id, :integer, :null => false
      t.column :week_id, :integer, :null => false
      t.column :top,     :integer
      t.column :jungle,  :integer
      t.column :mid,     :integer
      t.column :adc,     :integer
      t.column :support, :integer

      t.timestamps
    end
  end
end
