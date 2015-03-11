class Schedule
  attr_reader :date, :time

  def initialize(date, time)
    @date = date
    @time = time
  end

  def self.date
    %w(Mon Tue Wed Thur Fri Sat Sun)
  end

  def self.time
    (0..24).to_a
  end

  def work
    %w(Mon Tue Wed Thur Fri)
  end

  def school
    %w(Mon Wed Fri)
  end

  def to_s
    "#{date} #{time}"
  end
end

if __FILE__ == $PROGRAM_NAME
  schedule = Schedule.new('Mon', 5)
  puts schedule

  schedule = Schedule.new('Wed', 17)
  puts schedule

  schedule = Schedule.new('Sat', 22)
  puts schedule

  puts "#{schedule.work.join(', ')}
    I have work from 6am to 3pm with 1 hour lunch time."

  puts "#{schedule.school.join(', ')}
    I have school from 6 : 30 pm to 9 : 30 pm."

  puts "#{schedule.work && schedule.school.join(', ')}
    I have both school and work."
end
