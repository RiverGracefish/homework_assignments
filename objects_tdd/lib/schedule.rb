# practice use TDD for schedule
class Schedule
  attr_reader :datetime
  def initialize(datetime)
    @datetime = datetime
  end

  def work_days
    %w( Mon Tue Wed Thur Fri )
  end

  def school_days
    %w( Mon Wed Fri)
  end

  def work_on_day?(day)
    work_days.include?(day)
  end

  def school_on_day?(day)
    school_days.include?(day)
  end
end
