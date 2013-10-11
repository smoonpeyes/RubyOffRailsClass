class Student

	attr_reader :first_name, :last_name, :grade
	def initialize(first_name, last_name, grade)
		@first_name = first_name
		@last_name = last_name
		@grade = grade
	end

	def senior?
		grade == 12
	end

	def junior?
		grade == 11
	end

	def to_s
		"#{last_name}, #{first_name}"
	end
end

def seniors(students)
	senior_students = []
	students.select { |student| student.senior? }
end

def juniors(students)
	junior_students = []
	students.select { |student| student.junior? }
end


fred = Student.new("Fred", "James", 12)
sara = Student.new("Sara", "Smith", 12)
jack = Student.new("Jack", "Gong", 11)

all_students = [fred, sara, jack]

puts "Seniors"
	seniors(all_students).each do |student|
		puts "*" + student.to_s
end

puts ""

puts "Juniors"
	juniors(all_students).each do |student|
		puts "*" + student.to_s
end