class School
  attr_accessor :roster
  attr_reader :name
  def initialize(name)
      @name = name
      @roster = {}
    end
def add_student(value,key)
  roster[key]=[]  if !roster.key?(key)
  roster[key].push(value)
end
def grade(key)
roster[key]
end
def sort
roster.each {|key,value|   value.sort!}
end
end