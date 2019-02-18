class Acronym
  def self.abbreviate(desc)
    desc.split(/\s*\W\s*/).map(&:chr).map(&:upcase).join("")
  end
end
