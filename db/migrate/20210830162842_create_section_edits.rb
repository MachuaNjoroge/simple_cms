class CreateSectionEdits < ActiveRecord::Migration[6.1]
  def up
    create_table :section_edits do |t|
      t.integer "section_id"
      t.integer "admin_user_id"
      t.string "summary"
  
      t.timestamps
    end
    add_index('section_edits',['section_id','admin_user_id'])
  end
  
  
  def down
    drop_table :section_edits
  end
end


