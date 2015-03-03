require 'spec_helper'

describe "Viewing the details of a single bug archive" do

  it "shows the details of a bug archive" do 
    bug_archive = BugArchive.create(title: "Rbenv",
                                    error: " You have already activated rspec-core 3.1.7, but your Gemfile requires rspec-core 2.99.2. Prepending `bundle exec` to your command may solve this. (Gem::LoadError)",
                                    solution: "Prepend `bundle exec` to command to solve this",
                                    note: "This is a temporary fix. Need to find a permanent one.")  
    visit bug_archive_url(bug_archive)

    expect(page).to have_text(bug_archive.title)
    expect(page).to have_text(bug_archive.error)
    expect(page).to have_text(bug_archive.solution)
    expect(page).to have_text(bug_archive.note)
  end

end