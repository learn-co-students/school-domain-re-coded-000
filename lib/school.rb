# code here!
class School
  attr_accessor :name, :roster

def initialize(name)
  @name=name
  @roster={}
end

#You should be able to add a student to the school by calling the add_student method and giving it an argument of the student's name and
#their grade.
def add_student(student_name,grade)
#first_way:
  # roster[grade]=[] unless roster.include?(grade)
#second_way:
  roster[grade] ||= []
  # roster[grade].push(student_name)
  roster[grade] << student_name
end

#A method, grade, should take in an argument of a grade and return all of the students in that grade,EX:
#school.grade(9)
# => ["Muataz", "Dina"]
def grade(student_grade)
roster[student_grade]
end

#You should be able to get a sorted list of all the students where the strings in the student arrays are sorted alphabetically.
def sort
  sorted = {}
  roster.each do |grade, students|
    sorted[grade] = students.sort
  end
  sorted
end

end
