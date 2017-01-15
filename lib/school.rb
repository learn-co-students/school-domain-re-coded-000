# code here!
class School
  #attr_accessor :name
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name,grade)
    @roster[grade]||=[]
     @roster[grade]<<name
   end
  def grade(retrive_students_grades)
    roster[retrive_students_grades]
  end
  def sort
    sorting = {}
    @roster.each do |grade, students|
      sorting[grade] = students.sort
    end
    sorting
  end
end
