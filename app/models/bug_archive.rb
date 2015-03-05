class BugArchive < ActiveRecord::Base
  validates_presence_of :title, :error, :solution, :note


  def self.search_by_title(search_term)
    return [] if search_term.blank?
    where("title LIKE ?", "%#{search_term}%")
  end
end