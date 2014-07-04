class UsersController < ApplicationController
  before_action :check_if_logged_in, :except => [:new, :create, :follow, :unfollow]
  before_action :check_if_admin, :only => [:index]

  def new
    @user = User.new
  end

  #create new user: sign up code
  def create
    @user = User.new user_params
    if @user.save
      redirect_to welcome_path
  end
end
  #shit welcome page which now feels stupid
  def welcome
  end

  #show individual users while signed in as current user
  def show
    @user = User.where(:username => params[:id]).first
    # @work =
    #@user = User.where(User.works.find params[:id])
  end

  #current users page. goes there after signing in
  def index
      @users = User.all
  end

  #deletes user. still havent coded this!!!!
  def destroy
  end

  #add people to follow. this is found by going to exploe /picking and image/
  #clicking the users link / going to their page. then BAM button should be there!!
  def follow
    follow = User.where(:username => params[:id]).first
    @current_user.friends << follow
    redirect_to user_path( follow.username )
  end

  def unfollow
    unfollow = User.where(:username => params[:id]).first
    relationship = @current_user.followers.where( :friend_id => unfollow.id ).first
    relationship.destroy
    redirect_to user_path( unfollow.username )
  end

  def following
    @following = @current_user.friends
  end

  def followers
    #@followers = User.all.where(User.friends.username => @current_user.username)
    @followers = Follower.where(:friend_id => @current_user.id)
  end

  private
  def user_params
    params.require(:user).permit(:username, :avatar, :password, :password_confirmation)
  end

  #chech if the user is logged in. show only their stuff
  #loads the smart navs
  def check_if_logged_in
    redirect_to(new_user_path) if @current_user.nil?
  end

  #loads the smart navs
  #^^ should this be changed I dont fucking know
  def check_if_admin
    redirect_to(root_path) unless @current_user.is_admin?
  end

end
