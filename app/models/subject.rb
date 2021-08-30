class Subject < ApplicationRecord

    has_many :pages

    scope :visible, -> {where(visible:true)}
    scope :invisible, -> {where(invisible:true)}
    scope :sorted, lambda {order(:position)}
    scope :recent_articles, lambda {order(:created_at => :desc)}
    scope :search, lambda {|search_string|
        where(["name like ?","%#{search_string}%"])
    }
    # scope :visible, lambda{where(visible:true)}

    # def self.visible
    #     where(visible:true)
    # end
end
