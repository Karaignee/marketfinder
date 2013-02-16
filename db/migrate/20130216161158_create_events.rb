class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.integer :start
      t.integer :end
      t.integer :repeat
      t.string :location
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
