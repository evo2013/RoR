class CreateCelebrities < ActiveRecord::Migration
  def change
    create_table :celebrities do |t|
      t.string :fname
      t.string :lname
      t.string :occupation
      t.text :bio
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
