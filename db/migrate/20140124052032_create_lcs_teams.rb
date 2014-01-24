class CreateLcsTeams < ActiveRecord::Migration
  def change
    create_table :lcs_teams do |t|
      t.column :top,     :string, :null => false
      t.column :jungle,  :string, :null => false
      t.column :mid,     :string, :null => false
      t.column :adc,     :string, :null => false
      t.column :support, :string, :null => false

      t.timestamps
    end
  end
end
