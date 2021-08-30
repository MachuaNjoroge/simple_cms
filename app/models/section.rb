class Section < ApplicationRecord

    has_many :section_edits
    has_many :admin_users, :through => :section_edits

    scope :with_content_type, lambda {|ctype|
        where(content_type:ctype)
    }
end
