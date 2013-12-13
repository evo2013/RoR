class CreateFacebooks < ActiveRecord::Migration
  def change
    create_table :facebooks do |t|
      t.integer :celebrity_id
      t.integer :facebook_id
      t.string :content
      t.references :celebrity, index: true

      t.timestamps
    end
  end
end
