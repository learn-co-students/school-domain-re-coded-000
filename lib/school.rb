class School
  attr_accessor :roster
   attr_reader :name
  def initialize(name)
   @name =name
   @roster =Hash.new
  end
def add_student(name,grade)
  #roster[grade]= []
    #roster[grade] << name
    if !roster.key?(grade)
      roster[grade] =[]
    end
    roster[grade] << name
end

def grade(grade)
  roster[grade]
end

def sort
  sort =Hash.new
  roster.each do |grade, students|
    sort[grade] = students.sort
  end
  sort
end
end
