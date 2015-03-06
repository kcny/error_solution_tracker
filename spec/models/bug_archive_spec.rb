require 'spec_helper'

describe BugArchive do

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:error) }
  it { should validate_presence_of(:solution) }
  it { should validate_presence_of(:note) }


  it "should save bug archives" do
    bug_archive = BugArchive.create(bug_archive_attributes)
    bug_archive.save
    expect(BugArchive.first).to eq(bug_archive)
  end

  describe "search_by_title" do 
    
    it "returns an empty arrary if there is no match" do
      bug_archive1 = BugArchive.create(bug_archive_attributes(title: "Ruby"))  
      bug_archive2 = BugArchive.create(bug_archive_attributes(title: "SQL")) 

      expect(BugArchive.search_by_title("rails")).to eq([])
    end

    it "returns 1 bug archive if there is 1 bug archive" do
      bug_archive1 = BugArchive.create(bug_archive_attributes(title: "Ruby"))  
      bug_archive2 = BugArchive.create(bug_archive_attributes(title: "SQL")) 

      expect(BugArchive.search_by_title("Ruby")).to eq([bug_archive1])

    end
    it "returns 1 bug archive given a partial match" do
      bug_archive1 = BugArchive.create(bug_archive_attributes(title: "Ruby"))  
      bug_archive2 = BugArchive.create(bug_archive_attributes(title: "SQL")) 

      expect(BugArchive.search_by_title("ru")).to eq([bug_archive1]) 
    end
    it "returns all matches ordered by title" do 
      bug_archive1 = BugArchive.create(bug_archive_attributes(title: "Ruby"))  
      bug_archive2 = BugArchive.create(bug_archive_attributes(title: "Ruby on Rails")) 

      expect(BugArchive.search_by_title("Ruby")).to eq([bug_archive1, bug_archive2])
    end

    it "an empty array for an empty search" do
      bug_archive1 = BugArchive.create(bug_archive_attributes(title: "Ruby"))  
      bug_archive2 = BugArchive.create(bug_archive_attributes(title: "SQL")) 

      expect(BugArchive.search_by_title("")).to eq([])
    end
  end
end