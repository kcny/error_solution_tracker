require 'spec_helper'

describe BugArchivesController do
  describe "GET new" do 
    it "set @bug_archives new" do
      get :new
      expect(assigns(:bug_archive)).to be_instance_of(BugArchive) 
    end
  end
end
