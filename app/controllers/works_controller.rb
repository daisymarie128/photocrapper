class WorksController < ApplicationController


  def index
    #@works = Work.all
    @works = @current_user.works
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new work_params
    @work.user_id = @current_user.id
    @work.save
    redirect_to works_path
  end

  def welcome
  end

  def like
    @work = Work.find params[:id]
    @work.likes +=1
    @work.save
    # @like = nil
    # @like = @like + 1
    # @likes = like.count
  end


  def show
    @work = Work.find params[:id]
  end

  def destroy
    @work = Work.find params[:id]
    @work.destroy
    redirect_to works_path
  end

    private
    def work_params
    params.require(:work).permit(:title, :image, :image_cache, :tags, :desription)
    end

end
