class CreateSubject < ActiveRecord::Migration[6.1]
  def up
    create_table :subjects do |t|
      t.string "name"
      t.integer "position"
      t.boolean "visible", default:false
      
      t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end

  def down
    drop_table :subjects
  end

end
