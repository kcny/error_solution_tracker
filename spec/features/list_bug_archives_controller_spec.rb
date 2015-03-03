require 'spec_helper'

describe "Viewing the list bug archives shows the list of bug archives" do
  it "shows the list of bug archives" do
    visit bug_archives_url

    expect(page).to have_text("3 bug archives")
    expect(page).to have_text("Bug archive 1")
    expect(page).to have_text("Bug archive 2")
    expect(page).to have_text("Bug archive 3")

  end
end