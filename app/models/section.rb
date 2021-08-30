class Section < ApplicationRecord

    scope :with_content_type, lambda {|ctype|
        where(content_type:ctype)
    }
end
