class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.value(colors)
    value = ''
    colors.shift(2).each do |color|
      value += COLORS.index(color).to_s
    end
    value.to_i
  end
end