# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  likes      :integer
#  created_at :datetime
#  updated_at :datetime
#

class Like < ActiveRecord::Base
  belongs_to :works
end
