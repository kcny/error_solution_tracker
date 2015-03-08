require 'spec_helper'

describe UsersController do 
  
  describe "GET new" do 
    it "sets @user" do
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end

  describe "POST create" do
    context "with valid input" do

      before do 
        post :create, user: Fabricate.attributes_for(:user) 
      end

      it "creates user" do 
        expect(User.count).to eq(1)
      end
      it "redirects to login page" do 
        expect(response).to redirect_to new_bug_archive_path
      end    
    end

    context "with invalid input" do

    before  do 
      post :create, user: { password: "passpass", full_name: "Zebron Zimuto" } 
    end
      
      it "does not create user" do 
        expect(User.count).to eq(0)
      end

      it "renders new template" do
        expect(response).to render_template :new    
      end
      it "set @user " do 
        expect(assigns(:user)).to be_instance_of(User)
      end
    end
  end
end