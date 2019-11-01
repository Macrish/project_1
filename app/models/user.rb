class User < ApplicationRecord
	attr_readonly :first_name
	#console
	#user = User.create
	#user.token

	before_create :generate_token

	private

		def generate_token
			self.token = loop do
				t = SecureRandom.hex(16)
				break t unless User.where(token: t).exists?
			end
		end
end
