class School
def initialize(name)
  @roster={}
  @name=name
end
def roster
  @roster
end
def add_student(name, grade)
  roster[grade] ||= []
  @roster[grade] << name
end
def grade(grade)
  @roster[grade]
end
def sort
  grad={}
  @roster.each do |key, value|
    grad[key]=value.sort
  end
  grad
end
end
