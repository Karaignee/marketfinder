class ChangetoDateTime < ActiveRecord::Migration
  def up
  	change_column :events, :start, :datetime
  	change_column :events, :end, :datetime
  end

  def down
  end
end
