class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :celebrity_id
      t.string :url
      t.string :title
      t.string :content
      t.references :celebrity, index: true

      t.timestamps
    end
  end
end
