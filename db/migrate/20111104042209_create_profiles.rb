class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string :name
      t.string :dob
      t.string :gender
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :mobile

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
