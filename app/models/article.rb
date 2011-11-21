class Article < ActiveRecord::Base
  belongs_to :profile
  has_many :comments
end
