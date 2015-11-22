require_relative '../../db/config'
class Teacher < ActiveRecord::Base
	validates :email,
		:uniqueness => true,
		:format => { :with => /\w+(.)*\w+@\w+(.)*\w+/}
end
