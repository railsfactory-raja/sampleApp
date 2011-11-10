class AddUserIdInProfile < ActiveRecord::Migration
  def self.up
    add_column :profiles, :user_id, :string
  end

  def self.down
       remove_column :profiles, :user_id, :string
  end
end
