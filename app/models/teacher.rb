require_relative '../../db/config'
class Teacher < ActiveRecord::Base
	validates :email,
		:uniqueness => true,
		:format => { :with => /\w+(.)*\w+@\w+(.)*\w+/}

	has_many :classrooms, :foreign_key => :teacher_id
	has_many :teachers, :through => :classrooms
end
