class BugArchivesController < ApplicationController

  # before_action :set_bug_archive, only: [:show, :edit, :update, :destroy]

def new
  @bug_archive = BugArchive.new     
end  

#   def index
#     @bug_archives = BugArchive.all
#   end

#   def show
#     @bug_archive = BugArchive.find(params[:id])
#   end

#   def search
#     @results = BugArchive.search_by_title(params[:search_term]) 
#   end 

# private

  # def set_bug_archive
  #   @bug_archive = BugArchive.find(params[:id])
  # end

#   def bug_archive_params
#     params.require(:bug_archive).permit(:title, :error, :solution, :note)
#   end
end