# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  genre      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Genre < ActiveRecord::Base
  has_and_belongs_to_many :works
end
