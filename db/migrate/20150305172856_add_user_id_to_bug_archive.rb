class AddUserIdToBugArchive < ActiveRecord::Migration
  def change
    add_column :bug_archives, :user_id, :integer
  end
end
