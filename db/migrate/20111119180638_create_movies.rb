class CreateMovies < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.datetime :event_date
      t.datetime :event_time
      t.text :affiliation
      
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps

    end
  end

  def down
    drop_table :movies
  end
end