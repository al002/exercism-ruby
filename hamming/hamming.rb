class Hamming
  def self.compute(a, b)
    raise ArgumentError if a.length != b.length
    a_arry = a.split("")
    b_arry = b.split("")

    count = 0
    a_arry.each_with_index do |chr, i|
      count += 1 if chr != b_arry[i]
    end

    count
  end
end
