class CreateFlickrs < ActiveRecord::Migration
  def change
    create_table :flickrs do |t|
      t.integer :celebrity_id
      t.string :flickr_id
      t.string :url
      t.references :celebrity, index: true

      t.timestamps
    end
  end
end
