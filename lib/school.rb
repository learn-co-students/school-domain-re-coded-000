# code here!
class School
  attr_reader :name, :roster

  # @roster = {
  #   8: ["Gabe", "Shadi"], # Gabe and Shadi are in 8th grade
  #   9: ["Ali"], # Ali is in 9th grade
  #   10: ["Shereen"] # Shereen is in 10th grade
  # }


  def initialize(name)
    @name =name
    @roster={} # roster
  end

  def add_student(student_name,grade)
    # @school.add_student(student_name, grade)
    # This method should add a new student to the @roster hash for a school
    @roster[grade] ||= [] # nil
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end
  def sort
   @roster.each {|k,v| v.sort!}
  end

# shadis_hash = {}
# shadis_hash["name"] = "Shadi"
# shadis_hash["cars"] = 100
# shadis_hash["favorite_teachers"] = ["Shereen", "Gabe"]
#
# shadis_hash # =>
# {
#   "name": "Shadi",
#   "cars": 100,
#   "favorite_teachers": ["Shereen", "Gabe"]
# }

  #def roster=(roster)
  #  @roster= roster
  # end
end

# shadis_school = School.new("Shadi's School")
# shadis_school.add_student("Gabe", 9)
# shadis_school.roster # => { 9: ["Gabe"] }
