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
      
      let(:zebron){Fabricate :user}
      
      before do
        post :create, email: zebron.email, password: zebron.password
      end
      
      it "allows signed in user into session" do
        expect(session[:user_id]).to eq(zebron.id)
      end
      
      it "redirects to index page" do 
        expect(response).to redirect_to bug_archives_path
      end
        
      it "sets a notice" do
        expect(flash[:notice]).not_to be_blank
      end
    end
    
    context "with invalid credentials" do
      
      before do 
        zebron = Fabricate(:user)
        post :create, email: zebron.email, password: zebron.password + 'exyabc'
      end
      
      it "does not allow user wth invalid credentials into the session." do
     
      expect(flash[:notice]).to be_nil
      end
      it "redrects to login page" do
        expect(response).to redirect_to login_path

      end
      it "set an error message" do 
        expect(response).not_to be_blank

      end
    end
  end
      describe "GET destroy" do 
        before do 
          session[:user_id] = Fabricate(:user).id 
          get :destroy
        end
        it "clears the user's session" do
          
          expect(session[:usr_id]).to be_nil
        end
        it  "redirect to root path" do 
          expect(response).to redirect_to root_path
      end
        it "sets a notice" do 
          expect(flash[:notice]).not_to be_blank
        end
      end
    end




