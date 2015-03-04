require 'spec_helper'

describe "Navigate Bug Archives" do

  it "permits navigation from show to index page" do 
    bug_archive = BugArchive.create(title: "Rbenv",
                                    error: " You have already activated rspec-core 3.1.7, but your Gemfile requires rspec-core 2.99.2. Prepending `bundle exec` to your command may solve this. (Gem::LoadError)",
                                    solution: "Prepend `bundle exec` to command to solve this",
                                    note: "This is a temporary fix. Need to find a permanent one.")  
    visit bug_archive_url(bug_archive)

    click_link "Bug Archives Listing"

    expect(current_path).to eq(bug_archives_path)
  end

    it "permits navigation from index to show page" do 
    bug_archive = BugArchive.create(title: "Rbenv",
                                    error: " You have already activated rspec-core 3.1.7, but your Gemfile requires rspec-core 2.99.2. Prepending `bundle exec` to your command may solve this. (Gem::LoadError)",
                                    solution: "Prepend `bundle exec` to command to solve this",
                                    note: "This is a temporary fix. Need to find a permanent one.")
    
    visit bug_archive_url(bug_archive)

    click_link bug_archive.title
      

    expect(current_path).to eq(bug_archives_path(bug_archive))
      
  end

end