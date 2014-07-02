class PagesController < ApplicationController

  def explore
    search = params[:search]
    @results = Work.where("title ILIKE :search", search: "%#{ search }%")

  end
end


#     @results = []
#     @results << Work.where("title ILIKE :search", search: "%#{ search }%")
#     @results << Work.where("tag ILIKE :search", search: "%#{ search }%")
#   end
# end