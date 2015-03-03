class CreateBugArchive < ActiveRecord::Migration
  def change
    create_table :bug_archives do |t|
      t.string :title
      t.text   :error
      t.text   :solution
      t.text   :note

      t.timestamps
    end
  end
end
