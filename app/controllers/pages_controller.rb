class PagesController < ApplicationController

  def explore
    @work = Work.all
    search = params[:search]
    @results = Work.where("title ILIKE :search", search: "%#{ search }%")
  end
end


#     @results = []
#     @results << Work.where("title ILIKE :search", search: "%#{ search }%")
#     @results << Work.where("tags ILIKE :search", search: "%#{ search }%")
#   end
# end