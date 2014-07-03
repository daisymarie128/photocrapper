class AddWorkIdToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :work_id, :integer
  end
end
