class AdduserIdInArticles < ActiveRecord::Migration
  def self.up
      add_column :articles, :user_id, :string
  end

  def self.down
      remove_column :articles, :user_id
  end
end
