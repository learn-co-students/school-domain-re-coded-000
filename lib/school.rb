class School
  attr_accessor :roster
  attr_reader :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    #roster[grade] ||= []  #a ||= b   → a ? a : a = b  if a then a else a = b end
    if ! roster.key?(grade)
      roster[grade] = []   #grade key points to an array
      end
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  # this method should arrange the students in each grade by alphabetical order
  def sort
    sorted ={}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
