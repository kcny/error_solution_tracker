require 'spec_helper'
  
  describe BugArchivesController do
    describe "GET new" do 
      it "set @bug_archives new" do
        get :new
        expect(assigns(:bug_archive)).to be_instance_of(BugArchive) 
      end
    end

  describe "POST create" do
    context "with valid entry" do
    
    before do
      post :create, bug_archive: Fabricate.attributes_for(:bug_archive)
    end  

    it "creates the bug_archive" do
      bug_archive = BugArchive.create(bug_archive_attributes)
      expect(BugArchive.count).to eq(1)
      end 
    end

    context "with invalid entry" do
      before do 
        post :create, bug_archive: {title: "invalid"}
      end 

      it "does not create a bug archive" do 
        expect(BugArchive.count).to eq(0)
      end

      it "render a :new template" do
        # Ask a TA about this ****
        get :new
        expect(response).to render_template :new
      end
    end
  end  

  describe "GET index" do 
    it "assigns all bug archvies as @bug_archives" do
      bug_archive = BugArchive.create(bug_archive_attributes)
      get :index
      expect(assigns(:bug_archives)).to eq([bug_archive])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index") 
    end
  end

  describe "GET show" do 
    it "sets @bug_archive for authenticated users" do 
    session[:user_id] = Fabricate(:user).id
      bug_archive = Fabricate(:bug_archive)
      get :show, id: bug_archive.id 
      expect(assigns(:bug_archive)).to eq(bug_archive)
    end
  end
end
