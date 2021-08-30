class Page < ApplicationRecord

    belongs_to :subject
    has_many :sections
    has_and_belongs_to_many :admin_users
end


def up
    create_table :section_edits do |t|
      t.section_id
      t.admin_user_id

      t.timestamps
    end
    add_index('section_edits',['section_id','admin_user_id'])
  end


  def down
    drop_table :section_edits
  end

  class SectionEdit < ApplicationRecord
    belongs_to :admin_users
    belongs_to :sections
end