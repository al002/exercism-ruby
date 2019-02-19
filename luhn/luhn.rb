class Luhn
  def self.valid?(n)
    nr = n.reverse.gsub(/\s*/, "")
    return false if !nr.scan(/\D/).empty? || nr.length < 2

    s = nr.scan(/\d/)
    result = 0

    s.each_with_index do |char, index|
      if (index + 1) % 2 == 0
        product = char.to_i * 2
        product -= 9 if product > 9
        result += product
      else
        result += char.to_i
      end
    end

    result % 10 == 0
  end
end

