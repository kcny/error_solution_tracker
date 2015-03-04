require 'spec_helper'

describe "Viewing the list bug archives shows the list of bug archives" do
  it "shows the list of bug archives" do
   

    bug_archive1 = BugArchive.create(bug_archive_attributes)  
    bug_archive2 = BugArchive.create(bug_archive_attributes)  
    bug_archive3 = BugArchive.create(bug_archive_attributes)

     visit bug_archives_url  

    expect(page).to have_text("3 bug archives")
    expect(page).to have_text(bug_archive1.title)
    expect(page).to have_text(bug_archive2.title)
    expect(page).to have_text(bug_archive2.title)

  end
end