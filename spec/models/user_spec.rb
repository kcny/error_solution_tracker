require 'spec_helper'

describe User do 

  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }

  it "should save users" do
    user = User.create(user_attributes)
    user.save
    expect(User.first).to eq(user)   
  end
  it "should not be valid without a name" do 
    user = User.create(user_attributes(full_name: " "))
    expect(user).not_to be_valid
  end
  it "should not be valid without an email" do 
    user = User.create(user_attributes(email: " "))
    expect(user).not_to be_valid
  end
  it "should not be valid without a password" do 
    user = User.create(user_attributes(password: " "))
    expect(user).not_to be_valid
  end
  
  
end