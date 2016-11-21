# code here!
class School
  #attr_accessor  :add_student
  attr_reader :name, :roster
  def initialize(name)
    @name=name
    @roster={}
  end
  def add_student(student,grade)
    if ! roster.key?(grade)
    roster[grade]=[]
  end
      roster[grade]<<student
  end
  def grade(stu_grade)
    roster[stu_grade]
end
def sort
  roster.each do |grade, student|
       student = student.sort!
     end
end
end
