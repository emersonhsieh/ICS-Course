class Raindrops
  def self.convert(number)
    x = {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong"
    }.freeze

    rs = []
    x.keys.map do |v|
      rs << x.values_at(v) if (number % v == 0)
    end

    rs.empty? ? "#{number}" : rs.join('')
  end
end

module BookKeeping
  VERSION = 3
end