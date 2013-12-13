class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :celebrity_id
      t.integer :twitter_id
      t.string :tweets
      t.references :celebrity, index: true

      t.timestamps
    end
  end
end
