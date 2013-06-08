class CreateRepeatPeriods < ActiveRecord::Migration
  def change
    create_table :repeat_periods do |t|
      t.string :name
      t.integer :every_x
      t.boolean :daily

      t.timestamps
    end
  end
end
