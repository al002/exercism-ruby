class Series
  attr_reader :arr

  def initialize(s)
    @arr = s.split("")
  end

  def slices(n)
    raise ArgumentError if n > arr.length
    arr.each_cons(n).map { |a| a.join("") }
  end
end
