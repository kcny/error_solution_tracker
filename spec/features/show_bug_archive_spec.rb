require 'spec_helper'

describe "Viewing the details of a single bug archive" do

  it "shows the details of a bug archive" do 
    bug_archive = BugArchive.create(bug_archive_attributes)  
    visit bug_archive_url(bug_archive)

    expect(page).to have_text(bug_archive.title)
    expect(page).to have_text(bug_archive.error)
    expect(page).to have_text(bug_archive.solution)
    expect(page).to have_text(bug_archive.note)
  end

end