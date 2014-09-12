class User < ActiveRecord::Base
	
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	extend Enumerize

	enumerize :utype, in: [:web, :mobile], default: :mobile

	validates :mobile, uniqueness: true, if: "utype == 'mobile'"
	validates :mail , uniqueness: true, if: "utype == 'web'"

	has_secure_password

end
