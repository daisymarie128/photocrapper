class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.text :image
      t.string :tags
      t.text :desription
      t.timestamps
    end
  end
end
