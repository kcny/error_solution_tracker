require 'spec_helper'

describe User do 
  it "should save users" do
    user = User.create(user_attributes)
    user.save
    expect(User.first).to eq(user) 
  end
end