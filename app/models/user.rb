# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  avatar          :text
#  email           :string(255)
#  occupation      :string(255)
#  location        :string(255)
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :works
  has_many :followers, :dependent => :destroy
  has_many :friends, :through => :followers
end
