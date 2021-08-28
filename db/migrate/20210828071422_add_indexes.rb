class AddIndexes < ActiveRecord::Migration[6.1]
  def change
    add_index :pages, :permalink
  end
end
