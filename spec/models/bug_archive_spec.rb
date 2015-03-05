require 'spec_helper'

describe BugArchive do
  it "should save bug archives" do
    bug_archive = BugArchive.create(bug_archive_attributes)
    bug_archive.save
    BugArchive.first.title.should == "Rbenv"
  end
end