class BugArchivesController < ApplicationController
  before_filter :require_user, except: [:index, :new, :show, :search]
  before_action :set_bug_archive, only: [:show, :edit, :update, :destroy]

  def new
    @bug_archive = BugArchive.new     
  end 

  def create
    @bug_archive = current_user.bug_archives.build(bug_archive_params)
    if @bug_archive.save
      flash[:notice] = "Bug archive was created!" 
      redirect_to bug_archives_path
    else
      render :new
    end   
  end 

  def index
    @bug_archives = BugArchive.all
    @bug_archives = BugArchive.order(:created_at).reverse
  end

  def show
  end

  def edit
    
  end

  def update
    if @bug_archive.update(bug_archive_params)
      redirect_to @bug_archive
    else
      render :edit
    end
  end

  def destroy
    @bug_archive.destroy

    redirect_to bug_archives_path
  end

  def search
    @results = BugArchive.search_by_title(params[:search_term]) 
  end 

private

  def set_bug_archive
    @bug_archive = BugArchive.find(params[:id])
  end

  def bug_archive_params
    params.require(:bug_archive).permit(:title, :error, :solution, :note)
  end
end