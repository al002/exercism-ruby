class Raindrops
  def self.convert(n)
    output = ""

    factor_of_3 = n % 3 == 0
    factor_of_5 = n % 5 == 0
    factor_of_7 = n % 7 == 0

    output += "Pling" if factor_of_3
    output += "Plang" if factor_of_5
    output += "Plong" if factor_of_7

    output = n.to_s if (!factor_of_3 && !factor_of_5 && !factor_of_7)

    output
  end
end
