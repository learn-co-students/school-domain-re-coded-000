# code here!

class School
  attr_accessor :roster
  attr_reader :name
 def initialize(name)
    @name = name
    @roster={}
  end
def add_student(student,n)
  if ! @roster.key?(n)
    @roster[n]=[]
  end
  @roster[n].push(student)
end
def grade(n)
    @roster[n]
  end
def sort
  @roster.each do |k,v|
    v.sort!
  end

  end
end
