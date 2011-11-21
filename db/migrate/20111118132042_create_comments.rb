class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.references :article

      t.timestamps
    end
   add_index :comments, :article_id
  end

  def self.down
    drop_table :comments
  end
end
