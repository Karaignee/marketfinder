class ChangeEventStartEndType < ActiveRecord::Migration
  def up
  	change_column :events, :start, :string
  	change_column :events, :end, :string
  end

  def down
  end
end
