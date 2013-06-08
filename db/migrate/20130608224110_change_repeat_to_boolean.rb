class ChangeRepeatToBoolean < ActiveRecord::Migration
  def up
    def up
      change_column :events, :repeat, :boolean
    end
  end

  def down
  end
end
