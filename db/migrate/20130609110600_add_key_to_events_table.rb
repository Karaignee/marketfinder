class AddKeyToEventsTable < ActiveRecord::Migration
  def change
    add_column :events, :repeat_period_id, :integer
  end
end
