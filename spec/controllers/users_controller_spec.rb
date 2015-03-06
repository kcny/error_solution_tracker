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
      it "creates user" do 
       
        post :create, user: { email: "zebron@example.com", password: "passpass",
                                                    full_name: "Zebron Zimuto" }
                                                    expect(User.count).to eq(1)
      end
      it "redirects to login page" do 
        post :create, user: { email: "zebron@example.com", password: "passpass",
                                                    full_name: "Zebron Zimuto" }
                                      expect(response).to redirect_to login_path
        end    
    end
    context "with invalid input" do 
      it "does not create user" do 
        post :create, user: { password: "passpass", full_name: "Zebron Zimuto" }
                                                    expect(User.count).to eq(0)
      end
      it "renders new template" do
        post :create, user: { password: "passpass", full_name: "Zebron Zimuto" }
                                        expect(response).to render_template :new    
      end
      it "set @user " do 
        post :create, user: { email: "zebron@example.com", password: "passpass",
                                                    full_name: "Zebron Zimuto" }
                                  expect(assigns(:user)).to be_instance_of(User)
      end
    end
  end
end