User.destroy_all
Work.destroy_all
Collection.destroy_all

u1 = User.create(:username => 'user1', :avatar => 'http://notreal.com', :email => 'user@gmail.com', :occupation => 'student', :location => 'Sydney', :password => 'password', :password_confirmation => 'password')
u2 = User.create(:username => 'user2', :avatar => 'http://notreal.com', :email => 'user@gmail.com', :occupation => 'student', :location => 'Sydney', :password => 'password', :password_confirmation => 'password')
u3 = User.create(:username => 'user3', :avatar => 'http://notreal.com', :email => 'user@gmail.com', :occupation => 'student', :location => 'Sydney', :password => 'password', :password_confirmation => 'password')

w1 = Work.create(:title => 'work1', :image => 'http://notreal.com', :genre => 'genre1', :tags => 'tag1', :desription => 'description description description')
w2 = Work.create(:title => 'work2', :image => 'http://notreal.com', :genre => 'genre1', :tags => 'tag1', :desription => 'description description description')
w3 = Work.create(:title => 'work3', :image => 'http://notreal.com', :genre => 'genre1', :tags => 'tag1', :desription => 'description description description')