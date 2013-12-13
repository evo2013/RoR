class CreateInstagrams < ActiveRecord::Migration
  def change
    create_table :instagrams do |t|
      t.integer :celebrity_id
      t.string :instagram_id
      t.string :url
      t.references :celebrity, index: true

      t.timestamps
    end
  end
end
