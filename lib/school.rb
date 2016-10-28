# code here!
class School
  attr_accessor :roster
  attr_reader :name
#=====================
  def initialize(name)
    @name=name
    @roster={}
  end
#=============================
def add_student(value,key)
    if !roster.key?(key)
    roster[key]=[]
    end
  roster[key] << value
  end
  #===========================
def grade(key)
roster[key]
end
#==========================
def sort
roster.each do |key,value|
  value.sort!
end
end
#============================
end
