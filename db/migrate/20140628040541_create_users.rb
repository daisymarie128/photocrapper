class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.text :avatar
      t.string :email
      t.string :occupation
      t.string :location
    end
  end
end
