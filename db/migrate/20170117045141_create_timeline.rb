class CreateTimeline < ActiveRecord::Migration[5.0]
  def change

    create_table :timelines do |t|
      t.text :twitter_handle
      t.timestamps
    end

    add_column :ttweets, :timeline_id, :integer

  end
end
