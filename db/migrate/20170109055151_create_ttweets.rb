class CreateTtweets < ActiveRecord::Migration[5.0]
  def change
    create_table :ttweets do |t|
      t.text :tweet_body
      t.text :ttweet_body

      t.timestamps
    end
  end
end
