class School

  def initialize(name)
    @roster=Hash.new
    @name=name
  end
  def roster
    @roster
  end
  def add_student(name,grade)
    @roster[grade]||=[]
    @roster[grade]<<name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    result={}
    @roster.each do |grade,student|
      result[grade]=student.sort
    end
    result
  end
end
