class CreateGenresWorks < ActiveRecord::Migration
  def change
    create_table :genres_works do |t|
      t.integer :genre_id
      t.integer :work_id
    end
  end
end
