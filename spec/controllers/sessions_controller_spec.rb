require 'spec_helper'

describe SessionsController do
  describe "GET new" do 
    it "renders the new template for unauthenticated users" do 
      get :new

      expect(response).to render_template :new 
    end

    it "redirects authenticated users to the index page" do 
      session[:user_id] = Fabricate(:user).id
      get :new 
      expect(response).to redirect_to bug_archives_path
    end
  end

  describe "POST create" do 
    context "with valid credentials" do
      it "allow signed in user into session" do
        zebron = Fabricate(:user)
        post :create, email: zebron.email, password: zebron.password
        expect(session[:user_id]).to eq(zebron.id)

      end
      it "redirects to index page" 
      it "sets a notice"
    end
    context "with invalide credentials"
end
end