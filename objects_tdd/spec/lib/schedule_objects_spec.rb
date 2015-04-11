require_relative '../../lib/schedule_objects.rb'

describe Schedule do
  before(:each) do
    @schedule = Schedule.new(Time.now)
  end

  it 'should initialize datetime' do
    datetime = Time.now
    schedule = Schedule.new(datetime)
    expect(schedule.datetime).to eq(datetime)
  end

  describe '#work_days' do
    it 'should return array of work days' do
      expect(@schedule.work_days).to eq(['Mon', 'Tue', 'Wed', 'Thur', 'Fri'])
    end
  end

  describe '#school_days' do
    it 'should return array of school days' do
      expect(@schedule.school_days).to eq(['Mon', 'Wed', 'Fri'])
    end
  end

  describe '#work_on_day?' do
    it 'should return true if work on day' do
      expect(@schedule.work_on_day?('Wed')).to be_truthy
    end

    it 'should return false if no work on day' do
      expect(@schedule.work_on_day?('Sun')).to be_falsey
    end
  end

  describe '#school_on_day?' do
    it 'should return true if school on day' do
      expect(@schedule.school_on_day?('Fri')).to be_truthy
    end

    it 'should return false if no school on day' do
      expect(@schedule.school_on_day?('Tue')).to be_falsey
    end
  end
end
