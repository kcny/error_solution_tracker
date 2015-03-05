class BugArchive < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :error
  validates_presence_of :solution
  validates_presence_of :note

  def self.search_by_title(search_term)
    return [] if search_term.blank?
    where("title LIKE ?", "%#{search_term}%")
  end
end