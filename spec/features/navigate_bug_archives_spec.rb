require 'spec_helper'

describe "Navigate Bug Archives" do

  it "permits navigation from show to index page" do 
    bug_archive = BugArchive.create(bug_archive_attributes)     
    visit bug_archive_url(bug_archive)
    click_link "Back to Index"

    expect(current_path).to eq(bug_archives_path)
  end

  it "permits navigation from index to show page" do 
    bug_archive = BugArchive.create(bug_archive_attributes)
    visit bug_archives_url
    click_link bug_archive.title

    expect(current_path).to eq(bug_archive_path(bug_archive))      
  end
end