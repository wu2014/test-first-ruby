class Timer
  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    hours   = @seconds / 3600
    minutes = @seconds % 3600 / 60
    seconds = @seconds % 60

    [padded(hours), padded(minutes), padded(seconds)].join(":")
  end

  #Helper method:
  def padded(num)
    if num < 10
      "0#{num}"
    else
      "#{num}"
    end
  end

end