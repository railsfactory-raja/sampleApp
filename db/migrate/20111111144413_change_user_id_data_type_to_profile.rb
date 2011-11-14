class ChangeUserIdDataTypeToProfile < ActiveRecord::Migration
  def self.up
    change_column :profiles, :user_id, :integer
  end

  def self.down
    change_column :profiles, :user_id, :string
  end
end
