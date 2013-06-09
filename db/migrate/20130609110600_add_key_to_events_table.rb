class AddKeyToEventsTable < ActiveRecord::Migration
  def change
    add_column :events, :repeat_period_id, :Integer

  end
end
