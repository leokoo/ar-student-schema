require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
	has_many :classrooms, :foreign_key => :student_id
	has_many :teachers, :through => :classrooms
end