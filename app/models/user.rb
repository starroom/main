class User < ActiveRecord::Base

	extend Enumerize

	enumerize :utype, in: [:web, :mobile], default: :mobile

	validates :mobile, uniqueness: true, if: "utype == 'mobile'"
	validates :mail , uniqueness: true, if: "utype == 'web'"

	has_secure_password

end
