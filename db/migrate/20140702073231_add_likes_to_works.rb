class AddLikesToWorks < ActiveRecord::Migration
  def change
    add_column :works, :likes, :integer
  end
end
