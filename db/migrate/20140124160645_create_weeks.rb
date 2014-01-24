class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.column :start_date, :datetime, :null => false
      t.column :end_date,   :datetime, :null => false

      t.timestamps
    end
  end
end
