class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.type :type
      t.datetime :event_date
      t.datetime :date_posted
      t.timestamps
    end
  end

  def down
    drop_table :movies
  end
end
