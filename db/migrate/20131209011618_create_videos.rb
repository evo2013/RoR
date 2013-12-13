class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :celebrity_id
      t.string :url
      t.references :celebrity, index: true

      t.timestamps
    end
  end
end
