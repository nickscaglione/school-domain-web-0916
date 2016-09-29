
class School

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  attr_reader :name, :roster

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade_number, grade_roster|
      grade_roster.sort!
    end
  end

end
