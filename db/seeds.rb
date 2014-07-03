User.destroy_all
Work.destroy_all
Collection.destroy_all

u1 = User.create(:username => 'user1', :avatar => 'http://placekitten.com/500/500', :email => 'user@gmail.com', :occupation => 'student', :location => 'Sydney', :password => 'password', :password_confirmation => 'password')
u2 = User.create(:username => 'user2', :avatar => 'http://www.fillmurray.com/500/500', :email => 'user@gmail.com', :occupation => 'student', :location => 'Sydney', :password => 'password', :password_confirmation => 'password')
u3 = User.create(:username => 'user3', :avatar => 'http://www.fillmurray.com/400/500', :email => 'user@gmail.com', :occupation => 'student', :location => 'Sydney', :password => 'password', :password_confirmation => 'password')

w1 = Work.create(:title => 'work1', :image => 'http://image.made-in-china.com/6f3j00GCoaBkDMHUcb/3D-animal-Model.jpg', :tags => 'tag1', :desription => 'description description description', :user_id => u1.id)
w2 = Work.create(:title => 'work2', :image => 'http://img-new.cgtrader.com/items/8674/large_maya_rigged_human_male_body_muscular_system_and_skeleton_3d_model_aa1b378d-7827-4be5-b047-57790d4a7a1c.jpg', :tags => 'tag1', :desription => 'description description description', :user_id => u1.id)
w3 = Work.create(:title => 'work3', :image => 'http://37.media.tumblr.com/3975fe977d3169f835f3df656bfdeecc/tumblr_n40rx2gXGn1rd0fz3o2_500.jpg', :tags => 'tag1', :desription => 'description description description', :user_id => u1.id)
w4 = Work.create(:title => 'work4', :image => 'http://previewcf.turbosquid.com/Preview/2013/08/11__03_26_06/001sren_gvases.jpgd673af1f-136f-4c46-b2b6-2760a88b2d22Large.jpg', :tags => 'tag1', :desription => 'description description description', :user_id => u2.id)
w5 = Work.create(:title => 'work5', :image => 'http://3d-union.s3-website-eu-west-1.amazonaws.com/user/tosbin/media/242/image_quad-500.jpeg', :tags => 'tag1', :desription => 'description description description', :user_id => u2.id)
w6 = Work.create(:title => 'work6', :image => 'http://previewcf.turbosquid.com/Preview/2014/01/19__15_22_54/KFFTEXASARMCHAIR_0001.jpg01766a35-c287-414d-a18d-b1fd27f1af46Large.jpg', :tags => 'tag1', :desription => 'description description description', :user_id => u2.id)
w7 = Work.create(:title => 'work7', :image => 'http://3d-union.s3-website-eu-west-1.amazonaws.com/user/artfrelke/media/765/image_quad-500.jpeg', :tags => 'tag1', :desription => 'description description description', :user_id => u3.id)
w8 = Work.create(:title => 'work8', :image => 'http://lh4.ggpht.com/-UjC_jTZXIuI/TnSR2Jp_fGI/AAAAAAAABlU/3F_C-iSLQBU/3dsmax-stuff.blogspot.com_Boat%252520%252526%252520Yacht%2525203D%252520Models%25255B3%25255D.jpg?imgmax=800', :tags => 'tag1', :desription => 'description description description', :user_id => u3.id)