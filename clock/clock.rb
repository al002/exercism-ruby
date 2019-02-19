class Clock
  attr_reader :hour, :minute
  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    over_hour = minute / 60

    actual_minute = minute % 60
    actual_hour = (hour + over_hour) % 24

    "#{pad_zero(actual_hour)}:#{pad_zero(actual_minute)}"
  end

  def +(other)
    hour_sum = hour + other.hour
    minute_sum = minute + other.minute
    self.class.new(hour: hour_sum, minute: minute_sum).to_s
  end

  def -(other)
    hour_diff = hour - other.hour
    minute_diff = minute - other.minute
    self.class.new(hour: hour_diff, minute: minute_diff).to_s
  end

  def ==(other)
    to_s == other.to_s
  end


  private

  def pad_zero(n)
    return n < 10 ? "0#{n.to_s}" : n.to_s
  end
end
