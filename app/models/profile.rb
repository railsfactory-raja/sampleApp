class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :article
	
	validates :name, :presence => true
	validates :dob, :presence => true
	validates :gender, :presence => true
	validates :mobile, :presence => true
	validates :city, :presence => true
	validates :state, :presence => true
	validates :country, :presence => true
	
	has_attached_file :photo, 
									:styles => { :small => "150x150>", :thumb => "100x100>" }
                  #:url  => "/assets/:id/:style/:basename.:extension",
                 # :path => ":rails_root/public/assets/:id/:style/:basename.:extension"

#validates_attachment_presence :photo
#validates_attachment_size :photo, :less_than => 5.megabytes
#validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/gif']

 attr_accessible :photo, :name, :dob, :gender, :mobile, :city, :state, :country, :zip
end
