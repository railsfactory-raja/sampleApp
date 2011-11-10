class ChangeUserIdToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :profile_id, :integer
  end

  def self.down
    remove_column :artilces, :profile_id
  end
end
