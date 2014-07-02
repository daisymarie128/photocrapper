# == Schema Information
#
# Table name: works
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  image      :text
#  tags       :string(255)
#  desription :text
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  likes      :integer
#

class Work < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_and_belongs_to_many :genres
  has_many :likes
end
