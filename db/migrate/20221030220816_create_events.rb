class CreateEvents < ActiveRecord::Migration
  def up
    create_table :events do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.datetime :event_date
      t.text :event_time
      t.text :affiliation
    end
  end

  def down
    drop_table :events
  end
end
