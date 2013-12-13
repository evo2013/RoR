class User < ActiveRecord::Base

	# before_save {self.email = email.downcase}
	has_secure_password
	validates :fname, :lname, :email,  :password,    :presence => true
	validates :password, :length => {:minimum => 5}
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :email, :uniqueness => true
end
