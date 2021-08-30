class AdminUser < ApplicationRecord

    has_and_belongs_to_many :pages
    has_many :section_edits
    # Because we changed the of the table from users to admin_users
    #self.table_name = 'admin_users'
end
